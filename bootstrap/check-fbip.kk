module bootstrap/check-fbip

import bootstrap/chk
import bootstrap/core/core
import bootstrap/parc-reuse

import bootstrap/debug

import bootstrap/data/ratio


pub fun check-fbip( c : core )
    with dbg-handler
    chk-def-groups(c.gamma, c.type-infos, c.defs)


fun chk-def-groups(gamma: list<(string, fip-tag)>, type-infos: list<data-info>, dgs : list<def-group>) : _ list<string>
  with run-chk(gamma, type-infos)
  dgs.foreach(chk-def-group)

fun run-chk(gamma, type-infos: list<data-info>, action: () -> <chk, dbg, div|e> a) : <dbg, div|e> list<string>
  with input-handler(Input())
  with env-handler(Env(gamma = gamma, new-types = type-infos.map(fn(di) (di.name, di))))
  with warning-handler()
  with unique-id()
  with extract-output(Output())
  action()

fun chk-def-group(dg : def-group )
  match dg
    DefRec(defs) ->
      val names = defs.map(fn(d) d.name)
      defs.foreach(fn(d) chk-top-level-def(names, d))
    DefNonRec(def) ->
      chk-top-level-def([def.name], def)

fun chk-top-level-def(def-group-names : list<string>, d : def ): _ ()
  with def(d)
  info("checking function: " ++ d.name)
  with debug-warning()
  match d.sort
    DefFun(borrows, ft) | !ft.is-no-fip -> // is fip or fbip
      with fip-tag(ft)
      val out =
        with input(Input(def-group-names=def-group-names))
        extract-output(action={chk-top-level-expr(borrows, d.expr)})
      check-output-empty(out)
    _ -> () // Not a function
  ()

// --- Top-level Expression Check ---


fun chk-top-level-expr(borrows: list<param-info>, e: expr): <div, chk, dbg> ()
  match e
    Lam(pars, eff, body) ->
      chk-effect(eff)
      val bpars = borrows
        .zip-param-info(pars)
        .filter(fn((pi, _)) pi.is-borrow)
        .map(fn((_, p)) p)
      val opars = borrows
        .zip-param-info(pars)
        .filter(fn((pi, _)) pi.is-own)
        .map(fn((_, p)) p)
      val names = bpars.map(fn(p) p.name)
      with borrowed(names)
      val out = extract-output(action={chk-expr(body)})
      write-output(opars.foldl(out, fn(out', p) bind-name(p, NotReusable, out')))

    TypeLam(_, body) -> chk-top-level-expr(borrows, body)
    TypeApp(body, _) -> chk-top-level-expr(borrows, body)
    e                -> chk-expr(e)

// --- Expression Check ---

fun chk-expr( e : expr ): <div, chk, dbg> ()
  match e
    TypeLam(_, body) -> chk-expr(body)
    TypeApp(body, _) -> chk-expr(body)
    Lam(pars, eff, body) ->
      chk-effect(eff)
      require-capability(may-alloc, fn(_) Just("allocating a lambda expression"))
      val out = extract-output(action={chk-expr(body)})
      write-output(pars.foldl(out, fn(out', p) bind-name(p, NotReusable, out')))
    App(TypeApp(Var(tname), _), _) | tname.name.is-ignored-primitive -> ()
    App(TypeApp(Var(tname), _), [_, con-app]) | tname.name == "std/core/lazy-memoize" -> chk-expr(con-app)
    App(f, args) -> chk-app(f, args)
    Var(tname) -> if !is-borrowed(tname) then mark-seen(tname)
    Let([], body) ->
      chk-expr(body)
    Let(Cons(DefNonRec(def), dgs), body) ->
        val out = extract-output(action={chk-expr(Let(dgs, body))})
        val gamma2 = bind-name(TName(def.name, def.tp), NotReusable, out)
        write-output(gamma2)
        val names = gamma2.gamma-nm.map(fn((tn, _)) tn.name)
        with borrowed(names)
        with tail-mod([Let(dgs, body)])
        chk-expr(def.expr)
    Let(_, _) -> emit-warning(fn(_) "internal: currently the fip analysis cannot handle nested function bindings")

    Case(scruts, branches) ->
      chk-branches(scruts, branches)
    Con(_, _) -> ()
    Lit(lit) -> chk-lit(lit)

fun is-ignored-primitive(name : string) : bool
  ["std/core/cctx-set-ctx-path", "std/core/lazy-memoize-target", "std/core/lazy-enter", "std/core/lazy-leave"].any(fn(n) n == name) // TODO where does this go

fun chk-lit(lit: lit): _ ()
  match lit
    LitString -> () // Implement for diss? Probably not as out of scope for project
    _ -> ()

// --- Case Check ---

fun chk-branches(scrutinees: list<expr>, branches: list<branch>): <div, chk, dbg> ()
  val which-borrowed = scrutinees.map(is-borrowed-scrutinee)
  val branches-filtered = branches.filter(fn(b) !b.is-pattern-match-error)
  val stypes = scrutinees.map(type-of)

  val outs = branches-filtered.map(fn(b)
    extract-output(action={chk-branch(which-borrowed, stypes, b)})
  )
  val gamma2 = join-contexts(branches-filtered.map(patterns), outs)
  write-output(gamma2)

  val names = gamma2.gamma-nm.map(fn((tn, _)) tn.name)
  with borrowed(names)
  with tail-mod-product(branches-filtered)
  scrutinees.zip(which-borrowed).foreach(fn((s, wb)) chk-scrutinee(wb, s))

fun is-borrowed-scrutinee(e: expr): inp param-info
  match e
    Var(tn) -> if is-borrowed(tn) then Borrow else Own
    _ -> Own

fun chk-scrutinee(wb: param-info, s: expr): <div, chk, dbg> ()
  match (wb, s)
    (Borrow, Var) -> ()
    _ -> chk-expr(s)

fun chk-branch(which-borrowed: list<param-info>, stypes: list<type-expr>, b: branch): <div, chk, dbg> ()
  val bor-pats = which-borrowed.zip(b.patterns.zip(stypes)).filter(fn((wb, _)) wb.is-borrow).map(fn((_, p)) p)
  val own-pats = which-borrowed.zip(b.patterns.zip(stypes)).filter(fn((wb, _)) wb.is-own).map(fn((_, p)) p)

  val bor-names = bor-pats.map(fn((p, _)) p.bv).concat.map(fn(tn) tn.name)
  val outs =
    with borrowed(bor-names)
    b.guards.map(fn(g) extract-output(action={chk-guard(g)}))
  val out = join-contexts(b.guards.map(fn(_) b.patterns), outs)
  write-output(own-pats.foldl(out, fn(acc, p) bind-pattern(p, acc)))

fun chk-guard(g: guard): <div, chk, dbg> ()
  val out = extract-output(action={chk-expr(g.expr)})
  val names = out.gamma-nm.map(fn((tn, _)) tn.name)
  borrowed(names) // Dont include wrtie-oupt in borrow context
    with non-tail
    chk-expr(g.test)
  write-output(out)

fun is-pattern-match-error(b: branch): bool
  match b
    Branch(pats, [Guard(test, App(App(_, [TypeApp(Var(tn), _)]), _))]) ->
      pats.all(is-patWild) && test.is-expr-true && tn.name == "std/core/pattern-match-error"
    _ -> False

fun is-expr-true(e: expr): bool // TODO is uqui in both?
  match e
    Con(tn, _) -> tn.name == "std/core/True"
    _ -> False

fun tail-mod-product(branches: list<branch>, action: () -> <div, inp|e> a) : <div, inp|e> a
  match branches
    [Branch(_, [Guard(test, e)])] | test.is-expr-true ->
      with tail-mod([e])
      action()
    _ ->
      with non-tail()
      action()

fun bind-pattern(pt: (pattern, type-expr), out: output): <div, chk, dbg> output
  val (p, tp) = pt
  match p
    PatCon(tn, pats, crepr, targs) ->
      val size = get-constructor-alloc-size(crepr)
      provide-token(tn.name, size, pats.zip(targs).foldl(out, fn(acc, p') bind-pattern(p', acc)))
    PatVar(tn, pat) ->
      match pat
        PatCon(_, _, crepr, _) ->
          val size = get-constructor-alloc-size(crepr)
          bind-name(tn, size, out)
        PatWild -> bind-name(tn, NotReusable, out)
        _ -> bind-pattern((pat, tp), out)
    PatLit -> out
    PatWild ->
      if tp.needs-dup-drop-tp then
        require-capability(may-dealloc, fn(_) Just("binding a wildcard pattern causes deallocation"))
      out

fun bv(p: pattern): div list<tname>
  match p
    PatCon(_, pats, _, _) -> pats.flatmap(bv)
    PatVar(tn, p') -> Cons(tn, bv(p'))
    _ -> []

// --- Context Merging ---

fun join-contexts(pats: list<list<pattern>>, outs: list<output>): div output
  match outs
    Nil -> Output()
    Cons(out, Nil) -> out
    outs ->
      val g = fn ()
        val union-nm = outs.map(gamma-nm).foldl1(fn(m1, m2) m1.union-with(m2, max))
        val n = outs.length
        val union-dia = outs.map(gamma-dia).map(fn(dia) dia.map(fn((sz, as')) (sz, as'.map(fn((p, ids)) (p / n, ids))))).foldl1(fn(m1, m2) m1.union-with(m2, zip-tokens))
        Output(gamma-nm = union-nm, gamma-dia = union-dia, alloc-tree = Match(outs.map(alloc-tree)))
      try(g, fn(_) Output())

fun zip-tokens(as1: tokens, as2: tokens): div tokens
  match (as1, as2)
    (Cons((p1, ids1), rest1), Cons((p2, ids2), rest2)) -> Cons((p1 + p2, ids1 ++ ids2), zip-tokens(rest1, rest2))
    (Nil, rest2) -> rest2
    (rest1, Nil) -> rest1
    _ -> []


// --- Effect Check ---
fun chk-effect(tp: type-expr)
  if !is-fbip-extended(tp) then emit-warning(fn(env: env) -> "algebraic effects other than" ++ env.show ++ " pure may cause allocation.") // TODO use better than show

fun is-fbip(tau: type-expr)
  match tau
    TCon(name)              -> ["total", "div", "exn"].any(fn(n) n == name)
    TApp(_, [TCon(name)])   -> name == "exn" // TODO: && eqType tc1 tconHandled
    _                       -> False

fun is-fbip-extended(tp: type-expr)
    val (taus:list<type-expr>, _) = extract-effect-extend(tp)
    taus.all(fn(t:type-expr) t.is-fbip)

fun extract-effect-extend(t: type-expr): div (list<type-expr>, type-expr)
  match expand-syn(t)
    TApp(TCon(name), [l, e]) | name == "effect-extend" ->
      val (ls, tl) = extract-effect-extend(e)
      val ls0 = extract-label(l)
      (ls0 ++ ls, tl)
    _ -> ([], t)

fun extract-label(l: type-expr): div list<type-expr>
    match expand-syn(l)
      TApp(TCon(name), [_, _]) | name == "effect-extend" ->
        val (ls, _) = extract-effect-extend(l)
        ls
      _ -> []

fun is-effect-fixed(tp : type-expr): div bool
  val (_, tau) = extract-effect-extend(tp)
  match tau
    TCon(name) | name == "total" -> True
    _ -> False

fun chk-pars(pars: list<(string, type-expr)>, borrows)
  pars.foreach(fn((_, tp)) chk-effect(tp))

fun has-total-effect(tp : type-expr) : div bool
  match tp.expand-syn
    TFun(_, eff, _) -> eff.is-effect-fixed
    TForall(_, t) -> t.has-total-effect
    _ -> False

fun is-mod-cons(e : expr) : div bool
  match e
    Var -> True
    TypeLam(_, b) -> b.is-mod-cons
    TypeApp(b, _) -> b.is-mod-cons
    Con -> True
    Lit -> True
    Let(dgs, b) -> dgs.all(is-mod-cons-dg) && b.is-mod-cons
    App(f, args) -> f.is-mod-cons-fun && args.all(is-mod-cons)
    _ -> False

fun is-mod-cons-dg(dg : def-group) : _ bool
  match dg
    DefRec(defs) -> defs.all(fn(d) d.expr.is-mod-cons)
    DefNonRec(d) -> d.expr.is-mod-cons

fun is-mod-cons-fun(e : expr): div bool
  match e
    TypeLam(_, b) -> b.is-mod-cons-fun
    TypeApp(b, _) -> b.is-mod-cons-fun
    Con -> True
    Let(dgs, b) -> dgs.all(is-mod-cons-dg) && b.is-mod-cons-fun
    App(f, args) ->
      type-of(e).has-total-effect && f.is-mod-cons-fun && args.all(is-mod-cons)
    _ -> False

fun tail-mod(mod-exprs: list<expr>, action)
  val curr = get-input()
  val is-tail = curr.is-tail-context && mod-exprs.all(is-mod-cons)
  with input-override(curr(is-tail-context = is-tail))
  action()


fun chk-app( f : expr, args : list<expr> ) : <div, chk, dbg> ()
  match f
    TypeLam(_, body) -> chk-app(body, args) // ignore type machinery
    TypeApp(body, _) -> chk-app(body, args)
    App(TypeApp(Var(tn), _), [f']) | tn.name.normalize-name == name-effect-open -> chk-app(f', args)
    Con(cname, repr) ->
      chk-mod-cons(args)
      chk-lazy-con(cname, repr)
      chk-allocation(cname, repr)
    Var(tn) | !tn.info-is-local ->
      if tn.name == name-effect-open then // Not how it is in haskell, not sure why
        args.foreach(fn(a) chk-arg((Borrow, a)))
      else
        val bs = get-param-infos(tn.name)
        non-tail({chk-args(bs.zip-param-info(args))})
        chk-fun-callable(tn.name)
        val input = get-input()
        if !(input.is-tail-context || !input.def-group-names.any(fn(n) n == tn.name)) then
          require-capability(may-recurse, fn(_)
            Just("non-tail call to a (mutually) recursive function: " ++ tn.name)
          )
    _ ->
      with non-tail()
      args.foreach(chk-expr)
      val is-bapp = match f
        Var(tn) -> is-borrowed(tn)
        _ -> False
      if !is-bapp then
        require-capability(may-dealloc, fn(_)
          Just("owned calls to functions require deallocation")
        )
        chk-expr(f)

fun chk-mod-cons(args: list<expr>): <div, chk, dbg> ()
  match args
    [] -> ()
    Cons(a, rest) ->
      with tail-mod(rest)
      chk-expr(a)
      chk-mod-cons(rest)

fun get-data-info-by-name(name: name): <environment> maybe<data-info>
  newtype-lookup-any(name)

fun is-lazy-callable-from(fip-prime: fip-tag, fip: fip-tag): bool
  match (fip-prime, fip)
    (NoFip, Fip) -> False
    (NoFip, Fbip) -> False
    _ -> True

fun chk-lazy-con(tn: tname, repr: con-repr): <div, chk> ()
  // FIP analysis doesnt work for lazy cons, so we ignore proper implementation for now
  write-call-allocation(tn.name, NoFip(False))
  // val env = get-env()
  // match get-data-info-by-name(repr.typename)
  //   Nothing -> emit-warning(fn(_) "internal1: fip analysis could not find fip information for constructor: " ++ tn.name)
  //   Just(di) ->
  //     match di.constrs.find(fn(ci) ci.name == tn.name)
  //       Nothing -> emit-warning(fn(_) "internal: fip analysis could not find fip information for constructor: " ++ tn.name)
  //       Just(ci) ->
  //         val fip-prime = ci.lazy.default(NoFip(False))
  //         if ci.lazy.is-nothing || fip-prime.is-lazy-callable-from(env.fip-tag) then
  //           write-call-allocation(tn.name, fip-prime)
  //         else
  //           emit-warning(fn(_) "allocating a non-fip lazy constructor: " ++ tn.name)

fun is-con-as-just(repr: con-repr): bool
  match repr
    ConAsJust -> True
    _ -> False

fun size-field() : int
  8 // Assume 64-bit

fun value-repr-size(vr : value-repr) : int
  vr.raw-val + (vr.scan * size-field())

fun con-repr-alloc-size(repr : con-repr) : int
  if repr.dr.is-value then 0
  else repr.vr.value-repr-size

fun get-constructor-alloc-size(repr: con-repr): <environment> reusable
  val size = repr.con-repr-alloc-size
  if size == 0 then NotReusable
  else ReusableWithSize(size)

fun get-allocation(tn: tname, sz: reusable): <chk> ()
  match sz
    NotReusable -> ()
    ReusableWithSize(size) ->
      val id = fresh-id()
      val prob = ratio(1)
      write-output(Output(gamma-dia = [(size, [(prob, [(tn, id)])])], alloc-tree = Alloc(id)))

fun chk-allocation(tn: tname, repr: con-repr): <div, chk> ()
  if repr.is-con-as-just then ()
  elif repr.typename.ends-with("_noreuse").is-just then
    require-capability(may-alloc, fn(_)
      Just("types suffixed with _noreuse are not reused: " ++ repr.typename)
    )
  else
    val size = get-constructor-alloc-size(repr)
    get-allocation(tn, size)

// --- Allocation Credit Calculation ---

struct alloc-in-loop
  has-alloc: bool = False
  has-self-call: bool = False
  has-both-in-sequence: bool = False

val alloc-in-loop-empty = Alloc-in-loop()

fun sequential(a: alloc-in-loop, b: alloc-in-loop): alloc-in-loop
  Alloc-in-loop(
    a.has-alloc || b.has-alloc,
    a.has-self-call || b.has-self-call,
    a.has-both-in-sequence || b.has-both-in-sequence || (a.has-alloc && b.has-self-call) || (a.has-self-call && b.has-alloc)
  )

fun parallel(a: alloc-in-loop, b: alloc-in-loop): alloc-in-loop
  Alloc-in-loop(
    a.has-alloc || b.has-alloc,
    a.has-self-call || b.has-self-call,
    a.has-both-in-sequence || b.has-both-in-sequence
  )

fun (<=)(fa1: fip-alloc, fa2: fip-alloc): bool
  match (fa1, fa2)
    (AllocAtMost(n1), AllocAtMost(n2)) -> n1 <= n2
    (AllocAtMost, AllocFinitely) -> True
    (AllocAtMost, AllocUnlimited) -> True
    (AllocFinitely, AllocFinitely) -> True
    (AllocFinitely, AllocUnlimited) -> True
    (AllocUnlimited, AllocUnlimited) -> True
    _ -> False

fun max(fa1: fip-alloc, fa2: fip-alloc): fip-alloc
  if fa1 <= fa2 then fa2 else fa1

fun get-alloc-credits(not-reused: list<int>, tree: alloc-tree): div (fip-alloc, alloc-in-loop)
  match tree
    Alloc(id) ->
      if not-reused.any(fn(i) i == id) then
        (AllocAtMost(1), Alloc-in-loop(has-alloc = True))
      else
        (AllocAtMost(0), alloc-in-loop-empty)
    Call(fa) -> (fa, alloc-in-loop-empty)
    CallSelf(fa) -> (fa, Alloc-in-loop(has-self-call = True))
    Seq(l, r) ->
      val (fa1, loop1) = get-alloc-credits(not-reused, l)
      val (fa2, loop2) = get-alloc-credits(not-reused, r)
      val fa = match (fa1, fa2)
        (AllocAtMost(n1), AllocAtMost(n2)) -> AllocAtMost(n1 + n2)
        _ -> max(fa1, fa2)
      (fa, sequential(loop1, loop2))
    Match(ts) ->
      val results = ts.map(fn(t) get-alloc-credits(not-reused, t))
      val fa = results.map(fst).foldl(AllocAtMost(0), max)
      val loop = results.map(snd).foldl(alloc-in-loop-empty, parallel)
      (fa, loop)
    Leaf -> (AllocAtMost(0), alloc-in-loop-empty)

// --- Reuse and Token Logic ---

fun provide-token(debug-name: name, sz: reusable, out: output): <warning, environment, div, dbg> output
  match sz
    NotReusable -> out
    ReusableWithSize(size) ->
      match out.gamma-dia.lookup(fn(s) s == size)
        Nothing ->
          require-capability(may-dealloc, fn(_)
            Just("the matched constructor " ++ debug-name ++ "/" ++ size.show ++ " is not reused")
          )
          out
        Just(allocs) ->
          match allocs
            Cons((p, _), _) | p != ratio(1) ->
              // debug(p.show())
              require-capability(may-dealloc, fn(_)
                Just("not all branches can reuse the space provided by " ++ debug-name ++ "/" ++ size.show)
              )
            _ -> ()
          val next-allocs = match allocs { Cons(_, rest) -> rest; [] -> [] }
          val next-dia = if next-allocs.is-empty then out.gamma-dia.filter(fn((s, _)) s != size)
                         else out.gamma-dia.map(fn((s, as')) if s == size then (s, next-allocs) else (s, as'))
          out(gamma-dia = next-dia)

fun chk-args(args: list<(param-info, expr)>): <div, chk, dbg> ()
  args.foreach(chk-arg)

fun chk-arg(arg: (param-info, expr)): <div, chk, dbg> ()
  val (pi, e) = arg
  match pi
    Own -> chk-expr(e)
    Borrow ->
      match e
        TypeLam(_, body) -> chk-arg((Borrow, body))
        TypeApp(body, _) -> chk-arg((Borrow, body))
        App(TypeApp(Var(tn), _), [f']) | tn.name.normalize-name == name-effect-open
          -> chk-arg((Borrow, f'))
        Var(tn) -> mark-borrowed(tn)
        Lit(_) -> ()
        _ ->
          chk-expr(e)
          if e.type-of.needs-dup-drop-tp then
            require-capability(may-dealloc, fn(_)
               Just("passing owned expressions as borrowed causes deallocation")
            )

fun zip-param-info(pinfos: list<param-info>, args: list<a>): div list<(param-info, a)>
  match (pinfos, args)
    (Cons(p, ps), Cons(a, rest)) -> Cons((p, a), zip-param-info(ps, rest))
    ([], Cons(a, rest)) -> Cons((Own, a), zip-param-info([], rest))
    _ -> []

fun chk-fun-callable(name: string): <environment, out, warning> ()
  fun is-callable-from(fip': fip-tag, fip: fip-tag): bool
    match (fip', fip)
      (Fip, _) -> True
      (Fbip, Fbip) -> True
      (_, NoFip) -> True
      _ -> False
  val env = get-env()
  val normalized = name.normalize-name
  match env.gamma.lookup(fn(n) n == normalized)
    Nothing ->
      if   normalized == "std/core/cctx-set-ctx-path" || normalized == "std/core/field-addr-of"
      then write-call-allocation(name, Fip(AllocAtMost(0)))
      else emit-warning(fn(_) "internal: fip analysis could not find fip information for function: " ++ name)
    Just(fip') ->
      if fip'.is-callable-from(env.fip-tag) then
        write-call-allocation(name, fip')
      else
        emit-warning(fn(_) "calling a non-fip function: " ++ name)

fun may-recurse(f: fip-tag): bool
  match f
    Fip(_) -> False
    Fbip(_, is-tail) -> !is-tail
    NoFip(is-tail) -> !is-tail

// --- Output Verification ---

fun check-output-empty( out : output )
  // unbound names
  match out.gamma-nm.head
    Just((nm, _)) -> emit-warning(fn(_) "unbound name (which may have been used despite being borrowed): " ++ nm.name)
    Nothing -> ()

  // extract not-reused IDs
  val not-reused = out.gamma-dia.flatmap(fn((_, allocs)) allocs.flatmap(fn((_, ids)) ids.map(snd)))

  val (allocs, loop) = get-alloc-credits(not-reused, out.alloc-tree)
  val final-allocs = if loop.has-both-in-sequence then AllocUnlimited else allocs

  val permission = get-fip().get-fip-alloc
  if !(final-allocs <= permission) then
    emit-warning(fn(_) "function allocates " ++ final-allocs.show ++ " but was declared as allocating " ++ permission.show)

fun info-is-local(tname: tname): bool
  !tname.is-qualified

fun is-cctx-name(name : string) : bool
  match name.starts-with("cctx")
    Just(_) -> True
    Nothing -> False

fun needs-dup-drop(tname : tname)
  if tname.name.is-cctx-name then False
  else tname.tp.needs-dup-drop-tp

fun mark-seen(tname: tname): _ ()
  if tname.info-is-local then
    if tname.needs-dup-drop then
       write-output(Output(gamma-nm = [(tname, 1)]))
  else
    chk-wrap(tname)

fun mark-borrowed(nm: tname): _ ()
  if !nm.is-borrowed then
    mark-seen(nm)
    if nm.needs-dup-drop && nm.info-is-local then
      require-capability(may-dealloc, fn(env)
        Just("the last use of " ++ nm.name ++ " is borrowed (causing deallocation)")
      )

fun chk-wrap(tname: tname): _ ()
  val bs = get-param-infos(tname.name)
  if bs.any(fn(pi) pi.is-borrow) then
    emit-warning(fn(env) "a function with borrowed parameters is passed as an argument and implicitly wrapped (causing allocation)")

fun get-param-infos(name : string) : <environment> list<param-info>
  val env = get-env()
  match env.borrowed.lookup(fn(n) n == name)
    Just(pinfos) -> pinfos
    Nothing -> []

fun may-dealloc(f: fip-tag): bool
  match f
    Fip -> False
    _   -> True

fun get-fip-alloc(f : fip-tag) : fip-alloc
  match f
    Fip(a) -> a
    Fbip(a, _) -> a
    NoFip -> AllocUnlimited

fun may-alloc(f : fip-tag) : bool
  match f.get-fip-alloc
    AllocUnlimited -> True
    _ -> False

fun require-capability(cap: fip-tag -> bool, test: env -> maybe<string>): _ ()
  val env = get-env()
  if !cap(env.fip-tag) then
    match test(env)
      Just(warn) -> warning(warn)
      Nothing -> ()


fun get-data-info(tp : type-expr) : <environment> maybe<data-info>
  fun find-info(t : type-expr)
    match t
      TCon(name) -> newtype-lookup-any(name)
      TApp(f, _) -> find-info(f)
      TSyn(_, _, t') -> find-info(t')
      _ -> Nothing
  find-info(tp)

fun needs-dup-drop-tp(tp : type-expr) : <environment, dbg> bool
  match tp.get-data-info
    Nothing -> True // Assume heap-allocated if unknown
    Just(di) ->
      val is-value = match di.ddef { DataDefValue(_) -> True; _ -> False }
      (di.name != "std/core/int") && !is-value

// --- Helpers ---

fun bind-name(nm: tname, msize: reusable, out: output): _ output
  match out.gamma-nm.find(fn((tn, _)) tn == nm)
    Nothing ->
      val is-reusable = match msize
        ReusableWithSize(sz) -> ReusableWithSize(sz)
        NotReusable -> NotReusable // Simplified: should call addTypeReuseInfo

      val out2 = match is-reusable
        NotReusable -> out
        ReusableWithSize -> provide-token(nm.name, is-reusable, out)

      // chkDrop logic simplified:
      if nm.needs-dup-drop then
        require-capability(may-dealloc, fn(_) Just("the variable " ++ nm.name ++ " is unused (causing deallocation)"))
      out2
    Just((_, n)) ->
      if n > 1 && nm.needs-dup-drop then
        require-capability(may-alloc, fn(_) Just("the variable " ++ nm.name ++ " is used multiple times (causing sharing and preventing reuse)"))
      out(gamma-nm = out.gamma-nm.filter(fn((tn, _)) tn != nm))

fun is-no-fip( f : fip-tag ) : bool
  match f
    NoFip(_) -> True
    _ -> False

fun main()
  ()

module bootstrap/check-fbip

import bootstrap/chk
import bootstrap/core
import bootstrap/parc-reuse

// --- Entry Point ---

// pub fun check-fbip( c : core ) : <div,exn> list<string>
//   val (_, warnings) = run-chk( NoFip(False) )
//     chk-def-groups( c.defs )
//   warnings

// --- Check Definition Groups ---

pub fun chk-def-groups(dgs : list<def-group>)
  dgs.foreach(chk-def-group)

pub fun chk-def-group(dg : def-group )
  match dg
    DefRec(defs) ->
      val names = defs.map(fn(d) d.name)
      defs.foreach(fn(d) chk-top-level-def(names, d))
    DefNonRec(def) ->
      chk-top-level-def([def.name], def)

pub fun chk-top-level-def(def-group-names : list<string>, d : def ): _ ()
  with def(d)
  match d.sort
    DefFun(borrows, ft) | !ft.is-no-fip ->
      with fip-tag(ft)
      val out =
        with input(Input(def-group-names=def-group-names))
        extract-output(action={chk-top-level-expr(borrows, d.expr)})
      check-output-empty(out)
    _ -> ()
  ()

// --- Top-level Expression Check ---

pub fun chk-top-level-expr(borrows: list<param-info>, e: expr): <div, chk> ()
  match e
    Lam(pars, eff, body) ->
      chk-effect(eff)
      val bpars = borrows
        .zip(pars)
        .filter(fn((pi, _)) pi.is-borrow)
        .map(fn((_, p)) p)
      val opars = borrows
        .zip(pars)
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

pub fun chk-expr( e : expr ): <div, chk> ()
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
    Var(tname) -> mark-seen(tname)
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

pub fun chk-branches(scrutinees: list<expr>, branches: list<branch>): <div, chk> ()
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

fun chk-scrutinee(wb: param-info, s: expr): <div, chk> ()
  match (wb, s)
    (Borrow, Var) -> ()
    _ -> chk-expr(s)

fun chk-branch(which-borrowed: list<param-info>, stypes: list<type-expr>, b: branch): <div, chk> ()
  val bor-pats = which-borrowed.zip(b.patterns.zip(stypes)).filter(fn((wb, _)) wb.is-borrow).map(fn((_, p)) p)
  val own-pats = which-borrowed.zip(b.patterns.zip(stypes)).filter(fn((wb, _)) wb.is-own).map(fn((_, p)) p)

  val bor-names = bor-pats.map(fn((p, _)) p.bv).concat.map(fn(tn) tn.name)
  val outs =
    with borrowed(bor-names)
    b.guards.map(fn(g) extract-output(action={chk-guard(g)}))
  val out = join-contexts(b.guards.map(fn(_) b.patterns), outs)
  write-output(own-pats.foldl(out, fn(acc, p) bind-pattern(p, acc)))

fun chk-guard(g: guard): <div, chk> ()
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

fun bind-pattern(pt: (pattern, type-expr), out: output): <div, chk> output
  val (p, tp) = pt
  match p
    PatCon(tn, pats, crepr, targs) ->
      // TODO: provideToken
      pats.zip(targs).foldl(out, fn(acc, p') bind-pattern(p', acc))
    PatVar(tn, p') ->
      bind-name(tn, NotReusable, bind-pattern((p', tp), out))
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

fun join-contexts(pats: list<list<pattern>>, outs: list<output>): <div, chk> output // TODO
    val d = fn()
      val union-nm = outs.map(gamma-nm).foldl1(fn(m1, m2) m1.union-with(m2, max))
      // // TODO: Full logic (tryReuse, gamma-dia, alloc-tree)
      Output(gamma-nm = union-nm)
    try(d, fn(e:exception) Output())

fun union-with(m1: list<(tname, int)>, m2: list<(tname, int)>, f: (int, int) -> int): div list<(tname, int)>
  val keys = (m1.map(fst) ++ m2.map(fst)).unique
  keys.map(fn(k)
    val v1 = match m1.lookup(fn(tn) tn == k) { Just(v) -> v; Nothing -> 0 }
    val v2 = match m2.lookup(fn(tn) tn == k) { Just(v) -> v; Nothing -> 0 }
    (k, f(v1, v2))
  )

fun unique(ts: list<tname>): div list<tname>
  match ts
    [] -> []
    Cons(x, xs) -> Cons(x, xs.filter(fn(y) y != x).unique)

// --- Effect Check ---
pub fun chk-effect(tp: type-expr)
  if !is-fbip-extended(tp) then emit-warning(fn(env: env) -> "algebraic effects other than" ++ env.show ++ " pure may cause allocation.") // TODO use better than show

fun is-fbip(tau: type-expr)
  match tau
    TCon(name)              -> ["total", "div", "exn"].any(fn(n) n == name)
    TApp(tc1, [TCon(name)]) -> name == "exn" // TODO: && eqType tc1 tconHandled
    _                       -> False

fun is-fbip-extended(tp: type-expr)
    val (taus:list<type-expr>, _) = extract-effect-extend(tp)
    taus.all(fn(t:type-expr) t.is-fbip)

pub fun extract-effect-extend(t: type-expr): div (list<type-expr>, type-expr)
  match expand-syn(t)
    TApp(TCon(name), [l, e]) | name == "effect-extend" ->
      val (ls, tl) = extract-effect-extend(e)
      val ls0 = extract-label(l)
      (ls0 ++ ls, tl)
    _ -> ([], t)

pub fun extract-label(l: type-expr): div list<type-expr>
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

pub fun tail-mod(mod-exprs: list<expr>, action)
  val curr = get-input()
  val is-tail = curr.is-tail-context && mod-exprs.all(is-mod-cons)
  with input-override(curr(is-tail-context = is-tail))
  action()


pub fun chk-app( f : expr, args : list<expr> ) : <div, chk> ()
  match f
    TypeLam(_, body) -> chk-app(body, args) // ignore type machinery
    TypeApp(body, _) -> chk-app(body, args)
    App(TypeApp(Var(tn), _), [f]) | tn.name == "std/core/effect-open" -> chk-app(f, args) // TODO: Check effect-open @open
    Con(cname, repr) ->
      chk-mod-cons(args)
      chk-lazy-con(cname, repr)
      chk-allocation(cname, repr)
    Var(tn) | !tn.info-is-local ->
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

fun chk-mod-cons(args: list<expr>): <div, chk> ()
  match args
    [] -> ()
    Cons(a, rest) ->
      with tail-mod(rest)
      chk-expr(a)
      chk-mod-cons(rest)

fun get-data-info-by-name(name: string): <environment> maybe<data-info>
  get-env().type-infos.lookup(fn(n) n == name)

fun is-lazy-callable-from(fip-prime: fip-tag, fip: fip-tag): bool
  match (fip-prime, fip)
    (NoFip, Fip) -> False
    (NoFip, Fbip) -> False
    _ -> True

fun chk-lazy-con(tn: tname, repr: con-repr): <div, chk> ()
  val env = get-env()
  match get-data-info-by-name(repr.typename)
    Nothing -> emit-warning(fn(_) "internal: fip analysis could not find fip information for constructor: " ++ tn.name)
    Just(di) ->
      match di.constrs.find(fn(ci) ci.name == tn.name)
        Nothing -> emit-warning(fn(_) "internal: fip analysis could not find fip information for constructor: " ++ tn.name)
        Just(ci) ->
          val fip-prime = ci.lazy.default(NoFip(False))
          if ci.lazy.is-nothing || fip-prime.is-lazy-callable-from(env.fip-tag) then
            write-call-allocation(tn.name, fip-prime)
          else
            emit-warning(fn(_) "allocating a non-fip lazy constructor: " ++ tn.name)

fun is-con-as-just(repr: con-repr): bool
  match repr
    ConAsJust -> True
    _ -> False

fun get-constructor-alloc-size(repr: con-repr): <environment> reusable
  match repr
    ConEnum -> NotReusable
    ConSingleton -> NotReusable
    _ -> ReusableWithSize(8) // Simplified for MVP: assume 8 bytes for pointer-sized fields

fun get-allocation(tn: tname, sz: reusable): <chk> ()
  match sz
    NotReusable -> ()
    ReusableWithSize(size) ->
      val id = fresh-id()
      val prob = 1.0 // Simplified for MVP: assume all constructors are always allocated
      // Note: probability is 1.0 (represented as float64 1.0 for now)
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

fun chk-args(args: list<(param-info, expr)>): <div, chk> ()
  args.foreach(chk-arg)

fun chk-arg(arg: (param-info, expr)): <div, chk> ()
  val (pi, e) = arg
  match pi
    Own -> chk-expr(e)
    Borrow ->
      match e
        TypeLam(_, body) -> chk-arg((Borrow, body))
        TypeApp(body, _) -> chk-arg((Borrow, body))
        App(TypeApp(Var(tn), _), [f]) | tn.name == "std/core/effect-open" -> chk-arg((Borrow, f))
        Var(tn) -> mark-borrowed(tn)
        Lit(_) -> ()
        _ ->
          chk-expr(e)
          if e.type-of.needs-dup-drop-tp then
            require-capability(may-dealloc, fn(_)
               Just("passing owned expressions as borrowed causes deallocation")
            )

fun zip-param-info(pinfos: list<param-info>, args: list<expr>): div list<(param-info, expr)>
  match (pinfos, args)
    (Cons(p, ps), Cons(a, rest)) -> Cons((p, a), zip-param-info(ps, rest))
    ([], Cons(a, rest)) -> Cons((Own, a), zip-param-info([], rest))
    _ -> []

fun chk-fun-callable(name: string): <environment, out, warning> ()
  val env = get-env()
  match env.gamma.lookup(fn(n) n == name)
    Nothing ->
      if name == "std/core/cctx-set-ctx-path" || name == "std/core/field-addr-of" then
        write-call-allocation(name, Fip(AllocAtMost(0)))
      else
        emit-warning(fn(_) "internal: fip analysis could not find fip information for function: " ++ name)
    Just(fip') ->
      if fip'.is-callable-from(env.fip-tag) then
        write-call-allocation(name, fip')
      else
        emit-warning(fn(_) "calling a non-fip function: " ++ name)

fun is-callable-from(fip': fip-tag, fip: fip-tag): bool
  match (fip', fip)
    (Fip, _) -> True
    (Fbip, Fbip) -> True
    (_, NoFip) -> True
    _ -> False

fun may-recurse(f: fip-tag): bool
  match f
    Fip(_) -> False
    Fbip(_, is-tail) -> !is-tail
    NoFip(is-tail) -> !is-tail

// --- Output Verification ---

pub fun check-output-empty( out : output )
  // TODO: Implementation of check-output-empty
  ()

fun info-is-local(tname: tname): bool
  !tname.is-qualified

fun is-cctx-name(name : string) : bool
  match name.starts-with("cctx")
    Just(_) -> True
    Nothing -> False

pub fun needs-dup-drop(tname : tname)
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

// In the Haskell compiler, this information is stored in a Newtypes map for efficiency
fun get-data-info(tp : type-expr) : <environment> maybe<data-info> //
  val env = get-env()
  fun find-info(t : type-expr) : maybe<data-info>
    match t
      TCon(name) -> env.type-infos.lookup(fn(n) n == name)
      TApp(f, _) -> find-info(f)
      TSyn(_, _, t') -> find-info(t')
      _ -> Nothing
  find-info(tp)

pub fun needs-dup-drop-tp(tp : type-expr) : <environment> bool
  match tp.get-data-info
    Nothing -> True // Assume heap-allocated if unknown
    Just(di) ->
      val is-value = match di.ddef { DataDefValue -> True; _ -> False }
      (di.name != "std/core/int") && !is-value

// --- Helpers ---

fun bind-name(nm: tname, msize: reusable, out: output): _ output
  match out.gamma-nm.find(fn((tn, _)) tn == nm)
    Nothing ->
      // TODO: Full logic (addTypeReuseInfo, provideToken, chkDrop)
      out
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

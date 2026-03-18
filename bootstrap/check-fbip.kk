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
  with with-def(d)
  match d.sort
    DefFun(borrows, fip-tag) | !fip-tag.is-no-fip ->
      with with-fip-tag(fip-tag)
      val out =
        with input-handler(Input(def-group-names=def-group-names))
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
      with with-borrowed(names)
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
    Let(dgs, body) -> match dgs
      [] -> chk-expr(body)
      Cons(DefNonRec(def), dgs') ->
        val out = extract-output(action={chk-expr(Let(dgs', body))})
        val gamma2 = bind-name(TName(def.name, def.tp), NotReusable, out)
        write-output(gamma2)
        val names = gamma2.gamma-nm.map(fn((tn, _)) tn.name)
        with with-borrowed(names)
        with with-tail-mod([Let(dgs', body)])
        chk-expr(def.expr)
      _ -> emit-warning(fn(_) "internal: currently the fip analysis cannot handle nested function bindings")

    Case(scruts, branches) ->
      // TODO: chk-branches
      ()
    Con(_, _) -> ()
    Lit(lit) -> chk-lit(lit)

fun is-ignored-primitive(name : string) : bool
  ["std/core/cctx-set-ctx-path", "std/core/lazy-memoize-target", "std/core/lazy-enter", "std/core/lazy-leave"].any(fn(n) n == name)

fun chk-lit(lit: lit): _ ()
  match lit
    LitString -> () // Implement for diss? Probably not as out of scope for project
    _ -> ()
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

pub fun extract-effect-extend(t: type-expr)
  match expand-syn(t)
    TApp(TCon(name), [l, e]) | name == "effect-extend" ->
      val (ls, tl) = extract-effect-extend(e)
      val ls0 = extract-label(l)
      (ls0 ++ ls, tl)
    _ -> ([], t)

pub fun extract-label(l: type-expr): _ list<type-expr>
    match expand-syn(l)
      TApp(TCon(name), [_, _]) | name == "effect-extend" ->
        val (ls, _) = extract-effect-extend(l)
        ls
      _ -> []

fun is-effect-fixed(tp : type-expr): _ bool
  val (_, tau) = extract-effect-extend(tp)
  match tau
    TCon(name) | name == "total" -> True
    _ -> False

fun expand-syn(l: type-expr): type-expr
  match l
    TSyn(_, _, tp) -> expand-syn(tp)
    _ -> l

fun chk-pars(pars: list<(string, type-expr)>, borrows)
  pars.foreach(fn((_, tp)) chk-effect(tp))

fun has-total-effect(tp : type-expr) : _ bool
  match tp.expand-syn
    TFun(_, eff, _) -> eff.is-effect-fixed
    TForall(_, t) -> t.has-total-effect
    _ -> False

fun type-of(e : expr) : _ type-expr
  match e
    Lam(tnames, eff, res) -> TFun(tnames.map(fn(tn) (tn.name, tn.tp)), eff, type-of(res))
    Var(tn) -> tn.tp
    App(f, args) ->
      match type-of(f).expand-syn
        TFun(_, _, res) -> res
        _ -> TVar(0)
    TypeLam(tvs, body) -> TForall(tvs, type-of(body))
    TypeApp(f, _) ->
      match type-of(f).expand-syn
        TForall(_, t) -> t
        _ -> TVar(0)
    Con(tn, _) -> tn.tp
    Lit(l) -> match l
      LitInt -> TCon("std/core/int")
      LitFloat -> TCon("std/core/float64")
      LitChar -> TCon("std/core/char")
      LitString -> TCon("std/core/string")
    Let(_, body) -> type-of(body)
    Case(_, branches) ->
      match branches
        Cons(Branch(_, guards), _) ->
          match guards
            Cons(Guard(_, e'), _) -> type-of(e')
            _ -> TVar(0)
        _ -> TVar(0)

fun is-mod-cons(e : expr) : _ bool
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
    Con           -> True
    Let(dgs, b)   -> dgs.all(is-mod-cons-dg) && b.is-mod-cons-fun
    App(f, args)  ->
      val a = type-of(e).has-total-effect
      val b = f.is-mod-cons-fun
      val c = args.all(is-mod-cons)
      a && b && c
    _ -> False

pub fun with-tail-mod(mod-exprs: list<expr>, action)
  val curr = get-input()
  val is-tail = curr.is-tail-context && mod-exprs.all(is-mod-cons)
  with-input(curr(is-tail-context = is-tail), action=action)


pub fun chk-app( f : expr, args : list<expr> )
  // TODO: Full app logic
  ()

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

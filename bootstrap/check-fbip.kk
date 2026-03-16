module bootstrap/check-fbip

import bootstrap/chk
import bootstrap/core

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
  with withDef(d)
  match d.sort
    DefFun(borrows, fip-tag) | !fip-tag.is-no-fip ->
      with withFipTag(fip-tag)
      with read-only(Input())
      chk-top-level-expr(borrows, d.expr)
      val (_, out) = write-only(Output(), (++))
        chk-top-level-expr(borrows, d.expr)
      check-output-empty(out)
    _ -> ()
  ()

// --- Top-level Expression Check ---

pub fun chk-top-level-expr(borrows: list<param-info>, e: expr): _ ()
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
      with withBorrowed(names)
      chk-expr(body)

    TypeLam(_, body) -> chk-top-level-expr(borrows, body)
    TypeApp(body, _) -> chk-top-level-expr(borrows, body)
    e                -> chk-expr(e)

// --- Expression Check ---

pub fun chk-expr( e : expr ): _ ()
  match e
    TypeLam(_, body) -> chk-expr(body)
    TypeApp(body, _) -> chk-expr(body)
    Lam(pars, eff, body) ->
      // TODO: Implement lambda allocation check
      chk-expr(body)
    App(f, args) -> chk-app(f, args)
    Var(name) -> () // TODO: markSeen
    Let(dgs, body) ->
      // TODO: Handle Let
      chk-expr(body)
    Case(scruts, branches) ->
      // TODO: chk-branches
      ()
    Con(name, repr) -> ()
    Lit(lit) -> ()


// --- Effect Check ---
pub fun chk-effect(tp: type-expr)
  if !is-fbip-extended(tp) then emit-warning(fn(env: env) -> "algebraic effects other than" ++ env.show ++ " pure may cause allocation.") // TODO use better than show
  ()
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

pub fun chk-app( f : expr, args : list<expr> )
  // TODO: Full app logic
  ()

// --- Output Verification ---

pub fun check-output-empty( out : output )
  // TODO: Implementation of check-output-empty
  ()

// --- Helpers ---

fun is-no-fip( f : fip-tag ) : bool
  match f
    NoFip(_) -> True
    _ -> False

fun main()
  ()
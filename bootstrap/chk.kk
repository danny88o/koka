module bootstrap/chk

import bootstrap/data/ratio
import bootstrap/core/core

import bootstrap/debug

// --- Data Types from CheckFBIP.hs ---

pub type alloc-tree
  Alloc(id: int)
  Call(f: fip-alloc)
  CallSelf(f: fip-alloc)
  Seq(l: alloc-tree, r: alloc-tree)
  Match(ts: list<alloc-tree>)
  Leaf

pub fun alloc-tree/show(t: alloc-tree): div string
  match t
    Alloc(id) -> "Alloc(" ++ id.show ++ ")"
    Call(f) -> "Call(" ++ f.fip-alloc/show ++ ")"
    CallSelf(f) -> "CallSelf(" ++ f.show ++ ")"
    Seq(l, r) -> "Seq(" ++ show(l) ++ ", " ++ show(r) ++ ")"
    Match(ts) -> "Match(" ++ ts.map(show).join(", ") ++ ")"
    Leaf -> "Leaf"

pub alias tokens = list<(ratio, list<(tname, int)>)>

// pub fun gamma-dia/(++) (d1: gamma-dia, d2: gamma-dia): _ gamma-dia
//   d1.union-with(d2)
//     fn(l1, l2) l1 ++ l2

pub struct output
  gamma-nm : list<(tname, int)> = []
  gamma-dia : list<(int, tokens)> = []
  alloc-tree : alloc-tree = Leaf


// Sequential composition of outputs
pub fun output/(++) (o1 : output, o2 : output) : div output
  match (o1, o2)
    (Output(gamma-nm1, gamma-dia1, alloc-tree1), Output(gamma-nm2, gamma-dia2, alloc-tree2)) ->
      val gamma-nm = gamma-nm1.union-with(gamma-nm2, (+))
      val gamma-dia = gamma-dia1.union-with(gamma-dia2, list/(++)) // TODO Missing Sort
      val alloc-tree = Seq(alloc-tree1, alloc-tree2)
      Output(gamma-nm, gamma-dia, alloc-tree)


pub fun union-with(m1: list<(a, b)>, m2: list<(a, b)>, f: (b, b) -> <exn,div|e> b, ?(==): (a, a) -> bool): <div|e> list<(a, b)>
  val keys = (m1.map(fst) ++ m2.map(fst)).unique-by-eq
  val union = fn()
    keys.map(fn(k)
      val v1 = m1.lookup(fn(k1) k1 == k)
      val v2 = m2.lookup(fn(k2) k2 == k)
      match (v1, v2)
        (Just(val1), Just(val2)) -> (k, f(val1, val2))
        (Just(val1), Nothing) -> (k, val1)
        (Nothing, Just(val2)) -> (k, val2)
    )
  try(union, fn(_) Nil)

pub fun unique-by-eq(ts: list<a>, ?(==): (a, a) -> bool): div list<a>
  match ts
    Nil -> Nil
    Cons(x, xs) -> Cons(x, xs.filter(fn(y) !(y == x)).unique-by-eq)

pub fun normalize-name(name : string) : string
  match name.starts-with("std/core/types/open-")
    Just(_) -> "std/core/types/@open"
    Nothing -> name

pub struct env
  current-def : list<def> = []
  new-types : list<(name, data-info)> = []
  borrowed : list<(name, list<param-info>)> = []
  gamma : list<(name, fip-tag)> = []
  fip-tag : fip-tag = NoFip(False)

pub fun current-def-names(): <environment> list<string>
  get-env().current-def.map(fn(d) d.name)

pub fun get-fip(): <environment> fip-tag
  get-env().fip-tag

pub fun write-call-allocation(name: string, fip: fip-tag): <environment, out> ()
  val defs = current-def-names()
  val call = if defs.any(fn(n) n == name) then CallSelf else Call
  match fip
    Fip(n) -> write-output(Output(alloc-tree = call(n)))
    Fbip(n, _) -> write-output(Output(alloc-tree = call(n)))
    _ -> ()

pub fun env/show(e: env): div string
  "Env(current-def: [" ++ e.current-def.map(fn(d) d.name).join(", ") ++ "], fip-tag: " ++ e.fip-tag.show ++ ")"

pub struct input
  delta : list<name> = []
  def-group-names : list<name> = []
  is-tail-context : bool = True

// --- Seperate effects for isolation ---
// NOTE: unique state couldjust use read-only state with a counter, but this is more explicit also resolves effect polymorphism issues

// pub effect rd<a>
//   fun read(): a

// pub effect wrt<a>
//   fun write(a: a): ()

pub effect environment
  fun get-env(): env

pub effect inp
  fun get-input(): input

pub effect out
  fun write-output(o: output): ()

pub effect unique-state
  fun fresh-id() : int

pub effect fun warning( msg : string ): ()

pub alias chk = <environment, out, inp, unique-state, warning>

// pub fun read-only(initial: a, action : () -> <rd<a>|e> b ) : e b
//   with fun read() initial
//   action()

// pub fun write-only(initial: a, ?(++): (a, a) -> a, action: () -> <wrt<a>|e> b ) : e (b, a)
//   var state := initial
//   with handler
//     return(x) (x, state)
//     fun write(x) state := state ++ x
//   action()

pub fun env-handler(initial: env, action: () -> <environment|e> a) : e a
  var env := initial
  with fun get-env() env
  action()

pub fun env-override(new-env: env, action: () -> <environment|e> a) : <environment|e> a
  with override fun get-env() new-env
  action()

pub fun input-handler(initial: input, action: () -> <inp|e> a) : e a
  var input := initial
  with fun get-input() input
  action()

pub fun input-override(new-input: input, action: () -> <inp|e> a) : <inp|e> a
  with override fun get-input() new-input
  action()

pub fun extract-output(initial: output = Output(), action: () -> <out, div|e> a) : <div|e> output
  var output := initial
  with handler
    return(x) output
    fun write-output(o) output := output ++ o
  action()

pub fun unique-id(action: () -> <unique-state|e> a) : e a
  var next-id := 0
  with fun fresh-id()
    val id = next-id
    next-id := next-id + 1
    id
  action()

pub fun debug-warning(action: () -> <warning, dbg, environment|e> a) : <dbg, environment, warning|e> a
  with override fun warning(msg)
    val f = get-env().current-def.head.maybe("Unknown", fn(d) d.name)
    warn(f ++ ": " ++ msg)
    warning(msg)
  action()

pub fun warning-handler(action: () -> <warning|e> a) : e list<string>
  var warnings := []
  with handler
    return(x) warnings
    fun warning(msg) warnings := Cons(msg, warnings)
  action()


// --- Env Helpers

// pub fun with-env(
//     env : env,
//     def : list<def>    = env.current-def,
//     fip-tag : fip-tag  = env.fip-tag,
//     action : () -> <environment,environment|e> a
//   ): <environment|e> a
//   with env-handler(env(current-def = def, fip-tag = fip-tag))
//   action()

pub fun def(def: def, action)
  val env = get-env()
  with env-override(env(current-def = Cons(def, env.current-def)))
  action()

pub fun fip-tag(tag: fip-tag, action)
  val env = get-env()
  with env-override(env(fip-tag = tag))
  action()

pub fun newtype-lookup-any(name: name): environment maybe<data-info>
  get-env().new-types.lookup(fn(n) n == name)

// --- Input Helpers

pub fun input(input: input, action)
  with fun get-input() input
  action()

pub fun borrowed(names: list<string>, action)
  val input = get-input()
  with input-override(input(delta = names ++ input.delta))
  action()

pub fun is-borrowed(tname: tname): inp bool
  get-input().delta.any(fn(n) n == tname.name)

pub fun non-tail(action)
  val curr = get-input()
  with input-override(curr(is-tail-context = False))
  action()

// --- Warning Helpers

pub fun emit-warning(make-doc: env -> <environment, warning|e> string): <environment, warning|e> ()
  warning(make-doc(get-env()))

pub val name-effect-open: name = "std/core/types/@open"

fun main()
  ()

module bootstrap/chk

import bootstrap/data/ratio
import bootstrap/data/insertionsort

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
    Call(f) -> "Call(" ++ f.show ++ ")"
    CallSelf(f) -> "CallSelf(" ++ f.show ++ ")"
    Seq(l, r) -> "Seq(" ++ show(l) ++ ", " ++ show(r) ++ ")"
    Match(ts) -> "Match(" ++ ts.map(show).join(", ") ++ ")"
    Leaf -> "Leaf"


pub alias token = (ratio, list<(tname, int)>)
pub alias tokens = list<token>

pub struct output
  gamma-nm : list<(tname, int)> = []
  gamma-dia : list<(int, tokens)> = []
  alloc-tree : alloc-tree = Leaf

fun gamma-dia/(>)(d1: (int, tokens), d2: (int, tokens)) : bool
  d1.fst > d2.fst

// Sequential composition of outputs
pub fun output/(++) (o1 : output, o2 : output) : div output
  match (o1, o2)
    (Output(gamma-nm1, gamma-dia1, alloc-tree1), Output(gamma-nm2, gamma-dia2, alloc-tree2)) ->
      val gamma-nm = gamma-nm1.union-with(gamma-nm2, (+))
      val gamma-dia = gamma-dia1.union-with(gamma-dia2, list/(++)).sort()
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

// --- State and Environment ---

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

pub fun input/show(i: input): div string
  "(" ++ "delta: [" ++ i.delta.show() ++ "], " ++ "def-group-names: [" ++ i.def-group-names.show() ++ "]" ++ ", is-tail-context: " ++ i.is-tail-context.show() ++ ")"

// --- Seperate effects for isolation ---

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

// --- Environment Handlers

pub fun env-handler(initial: env, action: () -> <environment|e> a) : e a
  var env := initial
  with fun get-env() env
  action()

pub fun env-override(new-env: env, action: () -> <environment|e> a) : <environment|e> a
  with override fun get-env() new-env
  action()

pub fun add-def( def : def, action : () -> <environment|e> a) : <environment|e> a
  val env = get-env()
  with env-override(env(current-def = Cons(def, env.current-def)))
  action()

pub fun fip-tag(tag: fip-tag, action : () -> <environment|e> a) : <environment|e> a
  val env = get-env()
  with env-override(env(fip-tag = tag))
  action()

// --- Input Handlers

pub fun input-handler(input: input, action: () -> <inp|e> a) : e a
  with fun get-input() input
  action()

pub fun input-override(new-input: input, action: () -> <inp|e> a) : <inp|e> a
  with override fun get-input() new-input
  action()

pub fun add-borrowed(names: list<name>, action: () -> <inp|e> a) : <inp|e> a
  val input = get-input()
  with input-override(input(delta = names ++ input.delta))
  action()

pub fun non-tail(action: () -> <inp|e> a) : <inp|e> a
  val curr = get-input()
  with input-override(curr(is-tail-context = False))
  action()

pub fun is-borrowed(tname: tname): inp bool
  get-input().delta.any(fn(n) n == tname.name)

// --- Warning Handlers

pub fun warning-handler(action: () -> <warning|e> a) : e list<string>
  var warnings := []
  with handler
    return(x) warnings
    fun warning(msg) warnings := Cons(msg, warnings)
  action()

pub fun debug-warning(action: () -> <warning, dbg, environment|e> a) : <dbg, environment, warning|e> a
  with override fun warning(msg)
    val f = get-env().current-def.head.maybe("Unknown", fn(d) d.name)
    warn(f ++ ": " ++ msg)
    warning(msg)
  action()

pub fun emit-warning(make-doc: env -> <environment, warning|e> string): <environment, warning|e> ()
  val env = get-env()
  val name = env.current-def.head.maybe("Unknown", fn(d) d.name)
  warning("fip fun " ++ name.local-name ++ ": " ++ make-doc(env))

// --- Output Handlers
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

fun main()
  ()

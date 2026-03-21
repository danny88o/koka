module bootstrap/chk

import bootstrap/core/core

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

pub struct output
  gamma-nm : list<(tname, int)> = []
  gamma-dia : list<(int, list<(float64, list<(tname, int)>)>)> = []
  alloc-tree : alloc-tree = Leaf

// Sequential composition of outputs
pub fun output/(++) (o1 : output, o2 : output) : output
  Output(
    o1.gamma-nm ++ o2.gamma-nm, // TODO: Implement Map-style unionWith (+)
    o1.gamma-dia ++ o2.gamma-dia,
    match (o1.alloc-tree, o2.alloc-tree)
      (Leaf, t) -> t
      (t, Leaf) -> t
      (t1, t2)  -> Seq(t1, t2)
  )

pub struct env
  current-def : list<def> = []
  fip-tag : fip-tag = NoFip(False)
  type-infos : list<(name, data-info)> = []
  borrowed : list<(name, list<param-info>)> = []
  gamma : list<(name, fip-tag)> = []

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

pub effect fun warning( msg : string ): a

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

pub fun input-handler(initial: input, action: () -> <inp|e> a) : e a
  var input := initial
  with fun get-input() input
  action()

pub fun input-override(new-input: input, action: () -> <inp|e> a) : <inp|e> a
  with override fun get-input() new-input
  action()

pub fun extract-output(initial: output = Output(), action: () -> <out|e> a) : e output
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
  with env-handler(env(current-def = Cons(def, env.current-def)))
  action()

pub fun fip-tag(tag: fip-tag, action)
  val env = get-env()
  with env-handler(env(fip-tag = tag))
  action()

// --- Input Helpers

pub fun input(input: input, action)
  with fun get-input() input
  action()

pub fun borrowed(names: list<string>, action)
  val temp = get-input()
  val input = temp(delta = names ++ temp.delta)
  with override fun get-input() input
  action()

pub fun is-borrowed(tname: tname): inp bool
  get-input().delta.any(fn(n) n == tname.name)

pub fun non-tail(action)
  val curr = get-input()
  with input-override(curr(is-tail-context = False))
  action()

// --- Warning Helpers

pub fun emit-warning(make-doc: env -> <environment, warning|e> string): <environment, warning|e> a
  warning(make-doc(get-env()))


fun main()
  ()
module bootstrap/chk

import bootstrap/core

// --- Data Types from CheckFBIP.hs ---

pub type alloc-tree
  Alloc(id: int)
  Call(f: fip-alloc)
  CallSelf(f: fip-alloc)
  Seq(l: alloc-tree, r: alloc-tree)
  Match(ts: list<alloc-tree>)
  Leaf

pub fun aclloc-tree/show(t: alloc-tree): div string
  match t
    Alloc(id) -> "Alloc(" ++ id.show ++ ")"
    Call(f) -> "Call(" ++ f.fip-alloc/show ++ ")"
    CallSelf(f) -> "CallSelf(" ++ f.show ++ ")"
    Seq(l, r) -> "Seq(" ++ show(l) ++ ", " ++ show(r) ++ ")"
    Match(ts) -> "Match(" ++ ts.map(show).join(", ") ++ ")"
    Leaf -> "Leaf"

pub struct output
  gamma-nm : list<(string, int)> = []
  gamma-dia : list<(int, list<(float64, list<(string, int)>)>)> = []
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

pub fun env/show(e: env): div string
  "Env(current-def: [" ++ e.current-def.map(fn(d) d.name).join(", ") ++ "], fip-tag: " ++ e.fip-tag.show ++ ")"

pub struct input
  delta : list<string> = []
  def-group-names : list<string> = []
  is-tail-context : bool = True

// --- Seperate effects for isolation ---
// NOTE: unique state couldjust use read-only state with a counter, but this is more explicit

pub effect rd<a>
  fun read(): a

pub effect wrt<a>
  fun write(a: a): ()

pub effect unique-state
  fun fresh-id() : int

pub effect fun warning( msg : string ): a

pub alias chk = <rd<input>, rd<env>, wrt<output>, unique-state, warning>


// Operation Helpers

pub fun get-env(): rd<env> env
  read()

pub fun get-input(): rd<input> input
  read()

pub fun write-output(o: output): wrt<output> ()
  write(o)

pub fun emit-warning(make-doc: env -> <rd<env>, warning|e> string): <rd<env>, warning|e> a
  warning(make-doc(get-env()))

pub fun read-only(initial: a, action : () -> <rd<a>|e> b ) : e b
  with fun read() initial
  action()

pub fun write-only(initial: a, ?(++): (a, a) -> a, action: () -> <wrt<a>|e> b ) : e (b, a)
  var state := initial
  with handler
    return(x) (x, state)
    fun write(x) state := state ++ x
  action()

pub fun unique-id(action: () -> <unique-state|e> a) : e a
  var next-id := 0
  with fun fresh-id()
    val id = next-id
    next-id := next-id + 1
    id
  action()


// pub fun withDef2(d: def, action)
//   with override withDefHelp(d, get-env())
//   action()

// pub fun withDefHelp(d: def, env: env, action : () -> <rd<env>|e> a): e a
//   with read-only(env(current-def = Cons(d, env.current-def)))
//   action()

pub fun withDef(d: def, action : () -> <rd<env>,rd<env>|e> a): <rd<env>|e> a
  val curr-env = get-env()
  with read-only(curr-env(current-def = Cons(d, curr-env.current-def)))
  action()

pub fun withFipTag(tag: fip-tag, action)
  val curr-env = get-env()
  with read-only(curr-env(fip-tag = tag))
  action()

pub fun withBorrowed(names: list<string>, action : () -> <rd<input>,rd<input>|e> a): <rd<input>|e> a
  val curr-input = get-input()
  with read-only(curr-input(delta = names ++ curr-input.delta))
  action()

fun main()
  ()
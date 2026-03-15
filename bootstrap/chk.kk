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
    Call(f) -> "Call(" ++ f.show ++ ")"
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

pub type fip-alloc
  AllocUnlimited
  AllocFinitely
  AllocAtMost(n: int)

pub fun fip-alloc/show(fa: fip-alloc): string
  match fa
    AllocUnlimited -> "AllocUnlimited"
    AllocFinitely -> "AllocFinitely"
    AllocAtMost(n) -> "AllocAtMost(" ++ n.show ++ ")"

pub type fip-tag
  Fip(fip-alloc: fip-alloc)
  Fbip(fip-alloc: fip-alloc, tail: bool)
  NoFip(tail: bool)

pub struct env
  current-def : list<def> = []
  fip-tag : fip-tag = NoFip(False)

pub struct input
  delta : list<string> = []
  def-group-names : list<string> = []
  is-tail-context : bool = True

// --- Granular Effects for Modular Handling ---

pub effect rd<a>
  fun read(): a

pub effect wrt<a>
  fun write(a: a): ()

pub fun get-env(): rd<env> env
  read()

pub fun get-input(): rd<input> input
  read()

pub fun write-output(o: output): wrt<output> ()
  write(o)

// pub effect warning-writer
//   fun emit-warning( msg : string ) : () TODO?

pub effect unique-state
  fun fresh-id() : int

// Combined alias for the checker
pub alias chk = <rd<input>, wrt<output>, unique-state> // doesnt work

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

pub fun chk-handler(action : () -> <rd<input>,rd<env>,unique-state,wrt<output>|e> a): e (a, output)
  with write-only(Output(), (++))
  with read-only(Env())
  with read-only(Input())
  with unique-id()
  action()

  //  <wrt<output>,unique-state,rd<input>,rd<env>|_e> _a

// pub fun chk(action : () -> <rd<input>,rd<env>,unique-state,wrt<output>|e> a): e (a, output)
//   with read-only(Env())
//   with read-only(Input())
//   with unique-id()
//   with write-only(Output(), (++))
//   action()

fun main()
  ()
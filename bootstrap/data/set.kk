module bootstrap/data/set

import bootstrap/data/rb-tree

named effect set-interface<a>
  fun add(x: a): ()
  fun contains(x: a): bool
  // fun remove(x: a): ()
  fun size(): int
  fun list(): list<a>
  fun show(): string

pub alias set<a> = hnd/ev<set-interface<a>>

pub fun list/add-all(s: set<a>, xs: list<a>)
  xs.foreach(fn(x) s.add(x))

pub fun set/add-all(s1: set<a>, s2: set<a>)
  s1.list/add-all(s2.list())


// --- Red Black Tree Implementation ---

pub fun rbtree/new( ?(==): (a,a) -> bool, ?hash: a -> int, ?show: a -> string ): set<a>
  var tree := Leaf
  with h <- named handler
    fun add(v)      tree := insert(tree, v.hash, v)
    fun contains(k) tree.contains(k.hash)
    fun list()      tree.fold(Nil) fn(k,v,r) Cons(v, r)
    fun show()      tree.fold("")  fn(k,v,r) (k.show ++ ":" ++ v.show ++ "\n" ++ r)
    fun size()      tree.fold(0)   fn(k,v,r) r + 1
  h

// --- Hash Set Implementation ---

alias hset<a> = vector<list<a>>

fun hset(size) : hset<a>
  vector(size, Nil)

fun hset/list(set: hset<a>) : list<a>
  set.vector/list.concat

fun hset/length(set: hset<a>) : int
  set.vector/length

fun hset/show(set: hset<a>, ?show: a -> string) : string
  set.hset/list.show

fun index(hash-set: hset<a>, key: a, hash: a -> int) : int
  hash(key) % hash-set.hset/length

fun list/add-or-replace(list: list<a>, x: a, ^?(==): (a, a) -> bool) : list<a>
  match list
    Nil -> Cons(x, Nil)
    Cons(y, ys) ->
      if x == y then Cons(x, ys) else Cons(y, ys.list/add-or-replace(x))

pub fun hset/new( length: int = 16, ?(==): (a,a) -> bool, ?hash: a -> int, ?show: a -> string ) : exn set<a>
  var set := hset(length)
  var count := 0
  with h <- named handler
    fun add(x)
      val idx = set.index(x, hash)
      set[idx] := set.at(idx).default(Nil).add-or-replace(x)
      count := count + 1

    // fun remove(x)
    //   val idx = set.index(x, hash)
    //   val bucket = set.at(idx).default(Nil)
    //   set[idx] := bucket.remove(fn(y) x == y)
    //   count := count - 1

    fun contains(value)
      val idx = set.index(value, hash)
      match set.at(idx)
        Just(bucket) -> bucket.list/any(fn(x) x == value)
        Nothing      -> False

    fun size() count
    fun list() set.list()
    fun show() set.show()

  h

// fun hset/contains(hash-set: hset<a>, key: a, hash: a -> int, (==): (a,a) -> bool) : bool
//   val idx = hash-set.index(key, hash)
//   match hash-set.at(idx)
//     Just(bucket) -> bucket.list/any(fn(x) key == x)
//     Nothing      -> False

// fun hset/add(hash-set: local-var<h,hset<a>>, key: a, hash: a -> int) : <local<h>,exn, div> ()
//   val idx = hash-set.index(key, hash)
//   hash-set[idx] := Cons(key, hash-set.at(idx).default(Nil))


fun main()
  fun hash(x: int) : int
    x
  val set: set<int> = hset/new()
  val a = fn()
    set.add(1)
    set.add(17)
    set.add(1)
    set.add(33)
    // set.remove(17)
    if set.contains(1) && set.contains(33) && !set.contains(2) && !set.contains(18) && !set.contains(17)
    then set.show()
    else "Test failed"
  a()

module bootstrap/data/map

import bootstrap/data/rb-tree

pub named effect map-interface<k, v>
  fun get(k: k): maybe<v>
  fun put(k: k, v: v): ()
  fun contains(k: k): bool
  fun show(): string

pub alias map<k, v> = hnd/ev<map-interface<k, v>>

pub fun map/new( ?(==): (k,k) -> bool, ?hash: k -> int, ?show: v -> string ): map<k, v>
  var tree := Leaf
  with h <- named handler
    fun get(k)      tree.retrieve(k.hash)
    fun put(k,v)    tree := insert(tree, k.hash, v)
    fun contains(k) tree.contains(k.hash)
    fun show()      tree.fold("")  fn(k,v,r) (k.show ++ ":" ++ v.show ++ "\n" ++ r)
  h
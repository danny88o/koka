// From FP2: Fully in-Place Functional Programming

type stree
  Node(left : stree, value : int, right : stree)
  Leaf

type szipper
  Root
  NodeL( up : szipper, value : int, right : stree )
  NodeR( left : stree, value : int, up : szipper )

type top
  Top( left : stree, value : int, right : stree )

fip fun left(t : stree, ctxt : szipper) : (stree,szipper)
  match t
    Node(l,x,r) -> (l, NodeL(ctxt,x,r))
    Leaf -> (Leaf, ctxt)

fip fun lookup( t : stree, x : int ) : (bool, stree)
  zlookup(t,x,Root)

fip fun zlookup( t : stree, x : int, ctxt : szipper ) : (bool, stree)
  match t
    Leaf -> (False, splay-leaf(ctxt)) // not found, but splay anyway
    Node(l,y,r) -> if x < y then zlookup(l,x,NodeL(ctxt,y,r)) // go down the left (NodeL reuses Node)
                     elif x > y then zlookup(r,x,NodeR(l,y,ctxt)) // go down the right (NodeR reuses Node)
                     else (True, splay(Top(l,y,r),ctxt)) // found it, now splay it to the top

fip fun splay( top : top , ctxt : szipper ) : stree
  match top
    Top(l,x,r) ->
      match ctxt
        Root -> Node(l,x,r)
        NodeL(Root,y,ry) -> Node(l,x,Node(r,y,ry)) // zig
        NodeL(NodeR(lz,z,up),y,ry) -> splay( Top(Node(lz,z,l),x,Node(r,y,ry)), up) // zig-zag
        NodeL(NodeL(up,z,rz),y,ry) -> splay( Top(l,x,Node(r,y,Node(ry,z,rz))), up) // zig-zig
        NodeR(ly,y,Root) -> Node(Node(ly,y,l),x,r)
        NodeR(ly,y,NodeL(up,z,rz)) -> splay( Top(Node(ly,y,l),x,Node(r,z,rz)), up) // (B)->(C)
        NodeR(ly,y,NodeR(lz,z,up)) -> splay( Top(Node(Node(lz,z,ly),y,l),x,r), up)

fip fun splay-leaf( ctxt : szipper ) : stree
  match ctxt
    Root          -> Leaf
    NodeL(up,x,r) -> splay(Top(Leaf,x,r),up)
    NodeR(l,x,up) -> splay(Top(l,x,Leaf),up)

fbip fun smap( t : stree, ^f : int -> int) : stree
  match t
    Node(l,v,r) -> Node(l.smap(f), f(v), r.smap(f))
    Leaf -> Leaf

fip fun fip/is-node( ^t : stree ) : bool
  match t
    Node(_,_,_) -> True
    _ -> False

fun main() ()

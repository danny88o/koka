// From Perceus: Garbage Free Reference Counting with Reuse

type color
  Red
  Black


type tree
  Leaf
  Node(color : color, left : tree, key : int, value : bool, right : tree)


fip fun tree/is-red(^t : tree) : bool
  match t
    Node(Red, _, _, _, _) -> True
    _ -> False


fbip(1) fun bal-left(l : tree, k : int, v : bool, r : tree) : tree
  match l
    Node(_, Node(Red, lx, kx, vx, rx), ky, vy, ry)
      -> Node(Red, Node(Black, lx, kx, vx, rx), ky, vy, Node(Black, ry, k, v, r))
    Node(_, ly, ky, vy, Node(Red, lx, kx, vx, rx))
      -> Node(Red, Node(Black, ly, ky, vy, lx), kx, vx, Node(Black, rx, k, v, r))
    Node(_, lx, kx, vx, rx)
      -> Node(Black, Node(Red, lx, kx, vx, rx), k, v, r)
    Leaf -> Leaf


fbip(1) fun bal-right(l : tree, k : int, v : bool, r : tree) : tree
  match r
    Node(_, Node(Red, lx, kx, vx, rx), ky, vy, ry)
      -> Node(Red, Node(Black, l, k, v, lx), kx, vx, Node(Black, rx, ky, vy, ry))
    Node(_, lx, kx, vx, Node(Red, ly, ky, vy, ry))
      -> Node(Red, Node(Black, l, k, v, lx), kx, vx, Node(Black, ly, ky, vy, ry))
    Node(_, lx, kx, vx, rx)
      -> Node(Black, l, k, v, Node(Red, lx, kx, vx, rx))
    Leaf -> Leaf


fbip fun ins(t : tree, k : int, v : bool) : tree
  match t
    Leaf -> Node(Red, Leaf, k, v, Leaf)
    Node(Red, l, kx, vx, r) ->
      if k < kx then Node(Red, ins(l, k, v), kx, vx, r)
      elif k == kx then Node(Red, l, k, v, r)
      else Node(Red, l, kx, vx, ins(r, k, v))
    Node(Black, l, kx, vx, r) ->
      if k < kx then
        if is-red(l) then bal-left(ins(l, k, v), kx, vx, r)
        else Node(Black, ins(l, k, v), kx, vx, r)
      elif k == kx then
        Node(Black, l, k, v, r)
      elif is-red(r) then
        bal-right(l, kx, vx, ins(r, k, v))
      else
        Node(Black, l, kx, vx, ins(r, k, v))


fbip fun set-black(t : tree) : tree
  match t
    Node(_, l, k, v, r) -> Node(Black, l, k, v, r)
    t -> t


fbip fun insert(t : tree, k : int, v : bool) : tree
  if is-red(t) then set-black(ins(t, k, v))
  else ins(t, k, v)

fun main() ()

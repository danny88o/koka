type tree
  Node(lchild : tree, key : int, value : bool, rchild : tree)
  Leaf

fip fun is-level-one(^t: tree) : bool
  match t
    Node(Leaf, _, _, Leaf) -> True
    _ -> False

fun main() ()
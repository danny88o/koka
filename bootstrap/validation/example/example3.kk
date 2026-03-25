type tree
  Node(lchild : tree, key : int, value : bool, rchild : tree)
  Leaf


fip fun replace(t: tree, key: int, value: bool) : tree {
  match t
    Node(lchild, k, _, rchild) ->
      if k == key then
        Node(lchild, k, value, rchild)
      else if k < key then
        Node(lchild, k, value, rchild)
      else
        Node(lchild, key, value, rchild)
    Leaf -> Leaf

}

fun show(t: tree) : string {
  match t {
    Node(lchild, k, v, rchild) ->
      "Node(" ++ show(lchild) ++ ", " ++ show(k) ++ ", " ++ show(v) ++ ", " ++ show(rchild) ++ ")"
    Leaf -> "Leaf"
  }
}

fun main() {}

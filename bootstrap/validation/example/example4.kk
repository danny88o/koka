type tree
  Node(lchild : tree, key : int, value : bool, rchild : tree)
  Leaf

fip fun replace(t: tree, key: int, value: bool) : tree {
  match t {
    Node(lchild, k, _, rchild) ->
      if k == key then
        Node(lchild, k, value, rchild)
      else if k < key then
        Node(lchild, k, value, rchild)
      else
        Node(lchild, key, value, rchild)
    Leaf -> Leaf
  }
}

fun show(t: tree) : string {
  match t {
    Node(lchild, k, v, rchild) ->
      "Node(" ++ show(lchild) ++ ", " ++ show(k) ++ ", " ++ show(v) ++ ", " ++ show(rchild) ++ ")"
    Leaf -> "Leaf"
  }
}

fun main()
  val t = Node(Node(Leaf, 1, True, Leaf), 2, False, Node(Leaf, 3, True, Leaf))
  val new_t = replace(t, 2, True)
  print(new_t.show)

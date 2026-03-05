type tree
  Node(lchild : tree, key : int, value : bool, rchild : tree)
  Leaf

type mytree
  MyNode(lchild : tree, key : int, value : bool, rchild : tree)
  MyLeaf

fip fun replace(t: tree, key: int, value: bool) : mytree {
  match t {
    Node(lchild, k, _, rchild) ->
      if k == key then
        MyNode(lchild, k, value, rchild)
      else if k < key then
        MyNode(lchild, k, value, rchild)
      else
        MyNode(lchild, key, value, rchild)
    Leaf -> MyLeaf
  }
}

fun show(t: tree) : string {
  match t {
    Node(lchild, k, v, rchild) ->
      "Node(" ++ show(lchild) ++ ", " ++ show(k) ++ ", " ++ show(v) ++ ", " ++ show(rchild) ++ ")"
    Leaf -> "Leaf"
  }
}

fun main() {}

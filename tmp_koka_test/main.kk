type tree
  Node(lchild : tree, key : int, value : bool, rchild : tree)
  Leaf

fip fun replace(t: tree, key: int, value: bool) : tree {
  match t {
    Node(lchild, k, _, rchild) ->
      if k == key then Node(lchild, k, value, rchild)
      else if k < key then Node(lchild, k, value, replace(rchild, key, value))
      else Node(replace(lchild, key, value), k, value, rchild)
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

fip fun rev-acc( xs : list<a>, acc : list<a> ) : list<a>
  match xs
    Cons(x,xx) -> rev-acc(xx, Cons(x,acc))
    Nil        -> acc


fun main() {
  val l = Cons(1, Cons(2, Cons(3, Nil)))
  val new_l = rev-acc(l, Nil)
  print(show(new_l))
}
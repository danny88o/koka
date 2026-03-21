fip fun rev-acc( xs : list<a>, acc : list<a> ) : list<a>
  match xs
    Cons(x,xx) -> rev-acc(xx, Cons(x,acc))
    Nil        -> acc

fun main()
  ()

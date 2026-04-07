module bootstrap/data/insertionsort

// pub fip(1) fun insert(xs : list<(int, a)>, x : int, vx : a) : div list<(int, a)>
//   match xs
//     Cons((y,vy), ys) ->
//       if x < y then Cons((x,vx), Cons((y,vy), ys))
//       else Cons((y, vy), ys.insert(x, vx))
//     Nil -> Cons((x, vx), Nil)

// pub fip(1) fun sort-acc(xs : list<(int,a)>, acc : list<(int, a)>) : div list<(int, a)>
//   match xs
//     Cons((y,vy), ys) -> sort-acc(ys, acc.insert(y, vy))
//     Nil -> acc

pub fun insert(xs : list<a>, x : a,  ?(>): (a, a) -> bool) : list<a>
  match xs
    Cons(y, ys) ->
      if x > y then Cons(x, Cons(y, ys))
      else Cons(y, ys.insert(x))
    Nil -> Cons(x, Nil)

pub fun sort(xs : list<(a)>, ?(>) : (a, a) -> bool) : list<(a)>
  match xs
    Cons(y, ys) -> insert(sort(ys), y)
    Nil -> Nil

fun main()
  [1, 5, 3, 2, 4].map(fn(x) (x, x)).sort()
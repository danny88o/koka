module bootstrap/utils

pub fun foldl2(xs: list<a>, default: a, f: (a, a) -> a): a
  match xs
    Nil -> default
    Cons(x, Nil) -> x
    Cons(x, Cons(y, xs)) -> xs.foldl(f(x, y), f)

module bootstrap/utils

import bootstrap/core/core

pub fun foldl2(xs: list<a>, default: a, f: (a, a) -> a): a
  match xs
    Nil -> default
    Cons(x, Nil) -> x
    Cons(x, Cons(y, xs)) -> xs.foldl(f(x, y), f)

pub fun newtype-lookup-any(name: name, newtypes: list<(name, data-info)>): maybe<data-info>
  newtypes.lookup(fn(n) n == name)

pub fun difference (left: list<a>, right: list<a>, ?(==): (a, a) -> bool): list<a>
  left.filter(fn(x) !right.any(fn(y) x == y))
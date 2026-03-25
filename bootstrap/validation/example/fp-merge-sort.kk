

import std/num/int32

alias elem = int32

reference type pad
  Pad

type unit2
  Unit2(a : pad, b : pad)

type sublist<a>
  SCons(a : a, cs : sublist<a>)
  STuple(a : a, b : a)

type partition<a>
  Singleton(c : sublist<a>, z : partition<a>)
  Sublist(c : a, z : partition<a>)
  End

fip fun reverse-go(c : sublist<a>, acc : sublist<a>, u : unit2) : sublist<a>
  match c
    SCons(a, cs) -> reverse-go(cs, SCons(a, acc), u)
    STuple(a, b) -> SCons(b, SCons(a, acc))

fip fun reverse-sublist(c : sublist<a>) : sublist<a>
  match c
    SCons(a, SCons(b, c)) -> reverse-go(c, STuple(b, a), Unit2(Pad, Pad))
    SCons(a, STuple(b, c)) -> SCons(c, STuple(b, a))
    STuple(a, b) -> STuple(b, a)

fip fun to-list(c : sublist<a>, u : unit2) : list<a>
  match c
    SCons(a, cs) -> Cons(a, to-list(cs, u))
    STuple(a, b) -> Cons(a, Cons(b, Nil))

fip fun sequences(xs : list<elem>) : div partition<elem>
  match xs
    Cons(a, Cons(b, xs1)) ->
      if a > b then descending(b, STuple(b, a), xs1, Unit2(Pad, Pad))
      else ascending(b, STuple(b, a), xs1, Unit2(Pad, Pad))
    Cons(a, Nil) -> Sublist(a, End)
    Nil -> End

fip fun descending(a : elem, sublist : sublist<elem>, bs : list<elem>, u : unit2) : div partition<elem>
  match bs
    Cons(b, bs1) | a > b -> descending(b, SCons(b, sublist), bs1, u)
    bs -> Singleton(sublist, sequences(bs))

fip fun ascending(a : elem, sublist : sublist<elem>, bs : list<elem>, u : unit2) : div partition<elem>
  match bs
    Cons(b, bs1) | a <= b -> ascending(b, SCons(b, sublist), bs1, u)
    bs -> Singleton(reverse-sublist(sublist), sequences(bs))

fun main() ()
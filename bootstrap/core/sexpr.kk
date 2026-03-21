module bootstrap/core/sexpr


// Basic S-expression structure
pub type sexpr
  Atom(s: string)
  List(l: list<sexpr>)

pub fun sexpr/(==)(s1: sexpr, s2: sexpr): div bool
  match (s1, s2)
    (Atom(a1), Atom(a2)) -> a1 == a2
    (List(l1), List(l2)) ->
      fun all2(xs, ys)
        match (xs, ys)
          (Nil, Nil) -> True
          (Cons(x, xx), Cons(y, yy)) -> sexpr/(==)(x, y) && all2(xx, yy)
          _ -> False
      all2(l1, l2)
    _ -> False

pub fun sexpr/show-flat(s: sexpr): div string
  match s
    Atom(a) -> a.show
    List(l) -> "(" ++ l.map(show-flat).join(" ") ++ ")"

pub fun sexpr/show(s: sexpr, indent: int = 0, page-width: int = 80, ribbon-width: int = 80): div string
  match s
    Atom(a) -> a.show
    List([]) -> "()"
    List(l) ->
      val flat = s.show-flat
      if (indent + flat.count < page-width) && (flat.count < ribbon-width) then
        flat
      else
        val new-indent = indent + 2
        val content = l.map(fn(si) si.show(new-indent, page-width, ribbon-width)).join("\n" ++ " ".repeat(new-indent))
        "(" ++ content ++ ")"
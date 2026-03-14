module bootstrap/lexer

import std/text/parse
import std/num/float64

import bootstrap/core

// Basic S-expression structure
pub type sexpr
  Atom(s: string)
  List(l: list<sexpr>)

fun sexpr/show-flat(s: sexpr): div string
  match s
    Atom(a) -> a
    List(l) -> "(" ++ l.map(show-flat).join(" ") ++ ")"

pub fun sexpr/show(s: sexpr, indent: int = 0, page-width: int = 80, ribbon-width: int = 32): div string
  match s
    Atom(a) -> a
    List([]) -> "()"
    List(l) ->
      val flat = s.show-flat
      if (indent + flat.count < page-width) && (flat.count < ribbon-width) then
        flat
      else
        val new-indent = indent + 2
        val content = l.map(fn(si) si.show(new-indent, page-width, ribbon-width)).join("\n" ++ " ".repeat(new-indent))
        "(" ++ content ++ ")"

fun p-atom(): parse sexpr
  whitespace0()
  val s = none-of-many1("() \t\n\r")
  Atom(s)

fun p-list(): <div,parse> sexpr
  char('(')
  val l = many(p-sexpr)
  whitespace0()
  char(')')
  List(l)

fun p-sexpr(): <div,parse> sexpr
  whitespace0()
  p-list || p-atom


pub fun parse-sexpr(input: string): pure sexpr
  match input.slice.parse(p-sexpr)
    ParseOk(sexpr, _) -> sexpr
    ParseError(msg, rest) ->
      throw(
        "msg: " ++ msg ++
        "rest: " ++ rest.string
        )

pub fun extract-actual-string(input: string): exn string
  val start-marker = "/*\ninitial\n(S-expressions)\n*/\n"
  val end-marker = "\n/*end of\n(S-expressions)\n*/"
  match input.find(start-marker)
    Just(start) ->
      val after-start = start.after
      match after-start.string.find(end-marker)
        Just(end) ->
          end.before.string
        Nothing ->
          throw("End marker not found")
    Nothing ->
      throw("Start marker not found")

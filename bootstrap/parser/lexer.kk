module bootstrap/parser/lexer

import std/text/parse
import std/num/float64

import bootstrap/core/core
pub import bootstrap/core/sexpr
import bootstrap/core/spretty


// --- Custom fast iterative parser to avoid std/text/parse stack overflows ---

type token
  TokLParen
  TokRParen
  TokAtom(s: string)

fun tokenize(s: list<char>, acc: list<token> = [], current-atom: list<char> = [], in-string: bool = False): div list<token>
  match s
    [] ->
      val final-acc = if current-atom.is-empty then acc else Cons(TokAtom(current-atom.reverse.string), acc)
      final-acc.reverse
    Cons(c, rest) ->
      if in-string then
        if c == '"' then
          val next-acc = Cons(TokAtom(current-atom.reverse.string), acc)
          tokenize(rest, next-acc, [], False)
        elif c == '\\' then
          match rest
            Cons(r, rest2) -> tokenize(rest2, acc, Cons(r, current-atom), True)
            [] -> tokenize(rest, acc, Cons(c, current-atom), True)
        else
          tokenize(rest, acc, Cons(c, current-atom), True)
      elif c == '"' then
        val next-acc = if current-atom.is-empty then acc else Cons(TokAtom(current-atom.reverse.string), acc)
        tokenize(rest, next-acc, [], True)
      elif c == '(' then
        val next-acc = if current-atom.is-empty then acc else Cons(TokAtom(current-atom.reverse.string), acc)
        tokenize(rest, Cons(TokLParen, next-acc), [], False)
      elif c == ')' then
        val next-acc = if current-atom.is-empty then acc else Cons(TokAtom(current-atom.reverse.string), acc)
        tokenize(rest, Cons(TokRParen, next-acc), [], False)
      elif c == ' ' || c == '\t' || c == '\n' || c == '\r' then
        val next-acc = if current-atom.is-empty then acc else Cons(TokAtom(current-atom.reverse.string), acc)
        tokenize(rest, next-acc, [], False)
      else
        tokenize(rest, acc, Cons(c, current-atom), False)

fun build-ast(tokens: list<token>, acc: list<sexpr> = []): div (list<sexpr>, list<token>)
  match tokens
    [] -> (acc.reverse, [])
    Cons(TokLParen, rest) ->
      val (inner-l, rest2) = build-ast(rest, [])
      build-ast(rest2, Cons(List(inner-l), acc))
    Cons(TokRParen, rest) ->
      (acc.reverse, rest)
    Cons(TokAtom(s), rest) ->
      build-ast(rest, Cons(Atom(s), acc))

pub fun parse-sexpr(input: string): <div,exn> sexpr
  val tokens = tokenize(input.list)
  val (asts, _) = build-ast(tokens)
  match asts
    Cons(ast, _) -> ast
    [] -> throw("No S-expression found")

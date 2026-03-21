module bootstrap/validation/test-parser

import std/os/env
import std/os/file
import std/os/path

import std/os/path
import std/os/file
import bootstrap/parser/lexer
import bootstrap/parser/parser
import bootstrap/core/spretty

pub fun main()
  val file = match get-args()
    Cons(f, Nil) -> f
    _ -> throw("Enter one file not found in args")
  val content = file.realpath.read-text-file()
  val ast1 = parse-sexpr(content)
  val core = ast1.sexpr-to-core
  val pprinted = core.sexpr.show
  val ast2 = parse-sexpr(pprinted)
  if ast1 == ast2 then
    "Test passed"
  else
    val actual-path = file.path.string ++ ".actual"
    write-text-file(actual-path.path, pprinted)
    "Test failed, actual output written to: " ++ actual-path

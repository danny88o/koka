module bootstrap/validation/test-lexer

import std/os/env
import std/os/file
import std/os/path

import bootstrap/parser/lexer


fun main()
  val file = match get-args()
    Cons(f, Nil) -> f
    _ -> throw("Enter one file not found in args")

  val content = read-text-file(file.realpath)
  val ast1 = parse-sexpr(content)
  val pprinted = ast1.show
  val ast2 = parse-sexpr(pprinted)
  if ast1 == ast2 then
    "Test passed"
  else
    val actual-path = file.path.string ++ ".actual"
    write-text-file(actual-path.path, pprinted)
    "Test failed, actual output written to: " ++ actual-path


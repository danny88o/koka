module bootstrap/test-lexer

import std/os/env
import std/os/file
import std/os/path

import bootstrap/lexer


fun main()
  val file = match get-args()
    Cons(f, Nil) -> f
    _ -> throw("Enter one file not found in args")
  val content = read-text-file(file.realpath).extract-actual-string
  val pprinted = parse-sexpr(content).show
  content == pprinted || throw("Pprinted content does not match original content:\n" ++ pprinted ++ "\n\noriginal:\n" ++ content)


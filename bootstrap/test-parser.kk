module bootstrap/test-parser

import std/os/env
import std/os/file
import std/os/path

import std/os/path
import std/os/file
import bootstrap/lexer
import bootstrap/parser
import bootstrap/spretty
import bootstrap/core

pub fun main()
  val file = match get-args()
    Cons(f, Nil) -> f
    _ -> throw("Enter one file not found in args")
  val content = read-text-file(file.realpath).extract-actual-string
  val pprinted = content.parse-core.sexpr.show
  content == pprinted || throw("Pprinted content does not match original content:\n" ++ pprinted ++ "\n\noriginal:\n" ++ content)

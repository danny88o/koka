module bootstrap/validation/test-fbip

import std/os/env
import std/os/file
import std/os/path
import std/core/string

import bootstrap/parser/parser
import bootstrap/check-fbip


pub fun main()
  val file = match get-args()
    Cons(f, Nil) -> f
    _ -> throw("Enter one file not found in args")
  val content = file.realpath.read-text-file()
  val core = parse(content)
  val warnings = check-fbip(core)
  // TODO compare warnings
  if warnings == Nil then
    "Test passed"
  else
    warnings.foldl1(fn(l,r) l ++ "\n" ++ r)
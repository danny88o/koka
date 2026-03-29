module bootstrap/validation/helper

import std/os/env
import std/os/file
pub import std/os/path

pub fun remove-whitespace(s: string): string
  s.list.filter(fn(c) !c.is-white && c != '\\').string

pub fun read-file-from-env(): _ (string, path)
  val file = match get-args()
    Cons(f, Nil) -> f.path
    _ -> throw("Enter one file not found in args")
  (read-text-file(file), file)

pub fun write-actual-output(path: path, content: string)
  val actual = path.string ++ ".actual"
  write-text-file(actual.path/path, content)
  "Test failed, actual output written to: " ++ actual
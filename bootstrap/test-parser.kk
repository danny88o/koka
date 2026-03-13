module bootstrap/test-parser

import std/os/path
import std/os/file
import bootstrap/parser
import bootstrap/core

pub fun main() {
  val content = read-text-file("bootstrap/sexpr/example2.kk".path)
  val cores = parse-core-file(content)
  println("Successfully parsed " ++ cores.length.string ++ " core blocks.")
  cores.map(fn(c) {
    println("Core block has " ++ c.type-defs.length.string ++ " type def groups and " ++ c.defs.length.string ++ " def groups.")
  })
}

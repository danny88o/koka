module bootstrap/validation/test-parser

import bootstrap/validation/helper

import bootstrap/parser/lexer
import bootstrap/parser/parser
import bootstrap/core/spretty

pub fun main()
  val (content, file) = read-file-from-env()
  val ast1 = parse-sexpr(content)
  val core = ast1.sexpr-to-core
  val pprinted = core.sexpr.show
  val ast2 = parse-sexpr(pprinted)
  if ast1 == ast2 && pprinted.remove-whitespace == content.remove-whitespace then
    "Test passed"
  else
    file.write-actual-output(pprinted)
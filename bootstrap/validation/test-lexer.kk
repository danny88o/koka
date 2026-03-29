module bootstrap/validation/test-lexer

import bootstrap/validation/helper

import bootstrap/parser/lexer


fun main()
  val (content, file) = read-file-from-env()
  val ast1 = parse-sexpr(content)
  val pprinted = ast1.show
  val ast2 = parse-sexpr(pprinted)
  if ast1 == ast2 && content.remove-whitespace == pprinted.remove-whitespace then
    "Test passed"
  else
    file.write-actual-output(pprinted)


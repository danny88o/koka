#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Default options
test_lexer=true
test_parser=true

# Parse command line arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    -a|--all)
      test_lexer=true
      test_parser=true
      shift
      ;;
    -l|--lexer)
      test_lexer=true
      test_parser=false
      shift
      ;;
    -p|--parser)
      test_lexer=false
      test_parser=true
      shift
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

for file in $DIR/sexpr/*.kk
do
  base=$(basename "$file" .kk)
  echo -e "\033[1;34mTesting $base:\033[0m"

  if [ "$test_lexer" = true ]; then
    lexer=$(koka -e -v0 $DIR/test-lexer.kk -- $DIR/sexpr/$base.kk | sed 's/\x1b\[6n//g' )
    if [ "$lexer" != "Test passed" ]; then
      echo -e "\033[1;31mLexer test failed for $base\033[0m"
      echo -e "\033[1;33mResult:\033[0m $lexer"
    else
      echo -e "\033[1;32mLexer test passed for $base\033[0m"
    fi
  fi

  if [ "$test_parser" = true ]; then
    parser=$(koka -e -v0 $DIR/test-parser.kk -- $DIR/sexpr/$base.kk | sed 's/\x1b\[6n//g' )
    if [ "$parser" != "Test passed" ]; then
      echo -e "\033[1;31mParser test failed for $base\033[0m"
      echo -e "\033[1;33mResult:\033[0m $parser"
    else
      echo -e "\033[1;32mParser test passed for $base\033[0m"
    fi
  fi

  echo ""
done
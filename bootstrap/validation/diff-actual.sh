#!/bin/bash
find bootstrap/validation/sexpr -name "*.actual" -exec bash -c 'code --diff "${1%.actual}" "$1"' _ {} \;

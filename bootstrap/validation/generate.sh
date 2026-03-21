#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create output directories if they don't exist
mkdir -p $DIR/icore
mkdir -p $DIR/sexpr

# Clean up old actual files
rm -f $DIR/sexpr/*.actual

# Iterate over every .kk file in the example directory
for file in $DIR/example/*.kk
do
  # Extract the filename without the path and extension
  base=$(basename "$file" .kk)

  echo "Generating representations for $base..."

  # Generate Intermediate Core (icore)
  TERM=dumb stack --no-terminal exec koka "$file" -- -v0 --showicore 2>&1 | sed 's/\x1b\[6n//g' > "$DIR/icore/$base.kk"

  # Generate S-expressions (score)
  TERM=dumb stack --no-terminal exec koka "$file" -- -v0 --showscore 2>&1 | sed 's/\x1b\[6n//g' > "$DIR/sexpr/$base.kk"
done

echo "Generation complete."

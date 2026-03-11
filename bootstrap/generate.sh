#!/bin/bash

# Create output directories if they don't exist
mkdir -p bootstrap/icore
mkdir -p bootstrap/sexpr

# Iterate over every .kk file in the example directory
for file in bootstrap/example/*.kk
do
  # Extract the filename without the path and extension
  base=$(basename "$file" .kk)
  
  echo "Generating representations for $base..."
  
  # Generate Intermediate Core (icore)
  stack exec koka "$file" -- -v0 --showicore &> "bootstrap/icore/$base.kk"
  
  # Generate S-expressions (score)
  stack exec koka "$file" -- -v0 --showscore &> "bootstrap/sexpr/$base.kk"
done

echo "Generation complete."

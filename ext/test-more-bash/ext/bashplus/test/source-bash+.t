#!/usr/bin/env bash

source test/setup

PATH=$PWD/bin:$PATH
source bash+

functions=(
  use
  import
  fcopy
  findlib
  die
  warn
  can
)

for f in "${functions[@]}"; do
  is "$(type -t "bash+:$f")" function \
    "bash+:$f is a function"
done

done_testing 7

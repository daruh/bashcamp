#!/usr/bin/env bash

for n in {1..9}; do
    x=$RANDOM
    [ $x -le 20000 ] && continue
    echo "n=$n x=$x"
done
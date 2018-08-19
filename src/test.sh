#!/bin/bash

make

infile=bad_input.txt
algs=(naive sort)

for alg in "${algs[@]}"; do
    outfile="out_""$alg"".txt"
    echo "$alg" > "$outfile"
    ./driver-standalone "$alg" "$infile" 10 centers >> "$outfile"
done

diff $(ls out_*.txt)

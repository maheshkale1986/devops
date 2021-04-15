#!/bin/bash

dir="$1"
dir1="$2"

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

for fname in "$dir"/[0-9]*; do
    num="${fname##*/}"      # isolate filename from path
    num="${num%%[^0-9]*}"   # extract leading digits from filename
    echo $num
    if (( num > print_if_greater )); then
        printf '%s\n' "$fname"
    fi
done

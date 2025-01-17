#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Check if the file exists
file="$1"
if [ ! -f "$file" ]; then
    echo "File '$file' not found!"
    exit 1
fi

# Use sort, uniq, and awk to find duplicates and count their occurrences
sort "$file" | uniq -c | awk '$1 > 1 {print "Count: " $1 ", Line: " $2}'

#enter while executing file as file7.txt as args
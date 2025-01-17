#!/bin/bash

#(top 5 frequently  occurrence of each word in a file) 
cat file2.txt | sed -r 's/[[:space:]]+/\n/g' | sed '/^$/d' | sort | uniq -c | sort -n | tail -n5

# (top 1 frequently  occurrence of each word in a file) 
cat file2.txt | sed -r 's/[[:space:]]+/\n/g' | sed '/^$/d' | sort | uniq -c | sort -n | tail -n1 
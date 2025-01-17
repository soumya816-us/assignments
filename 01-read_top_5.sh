#!/bin/bash

 #(Word count in a file)
echo " the total count of words in a file"
cat file2.txt | tr -s '[:space:]' '\n' | sort | uniq -c

#(top 5 frequently  occurrence of each word in a file) 
echo " the top 5 frequently occurance of words "
cat file2.txt | sed -r 's/[[:space:]]+/\n/g' | sed '/^$/d' | sort | uniq -c | sort -n | tail -n5

echo " the top 1 frequently occurance of words "
# (top 1 frequently  occurrence of each word in a file) 
cat file2.txt | sed -r 's/[[:space:]]+/\n/g' | sed '/^$/d' | sort | uniq -c | sort -n | tail -n1 
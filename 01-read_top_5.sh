#!/bin/bash

cat file2.txt | sed -r 's/[[:space:]]+/\n/g' | sed '/^$/d' | sort | uniq -c | sort -n | tail -n5
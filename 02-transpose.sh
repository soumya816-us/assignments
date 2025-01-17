#!/bin/bash

echo "the transpose of a file is"

# paste -s -d ' ' file3.txt


awk '
{
    for (i=1; i<=NF; i++) {
        a[i, NR] = $i  # Store the i-th field (column) of row NR in array a
    }
}
END {
    for (i=1; i<=NF; i++) {  # Loop through the number of columns
        for (j=1; j<=NR; j++) {  # Loop through the rows
            printf "%s ", a[i,j]  # Print the transposed data
        }
        print ""  # Print a newline after each transposed row
    }
}
' file3.txt

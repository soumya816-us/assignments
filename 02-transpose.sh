#!/bin/bash

awk '
{
    for (i=1; i<=NF; i++) {
        a[i][NR] = $i  # Store the i-th field of row NR in array a
    }
}
END {
    # Print the transposed data
    for (i=1; i<=NF; i++) {  # Loop over the fields (columns)
        for (j=1; j<=NR; j++) {  # Loop over the rows
            printf "%s ", a[i][j]  # Print column i, row j (transposed)
        }
        print ""  # Print a newline after each transposed row
    }
}
' file3.txt

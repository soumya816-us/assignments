#!/bin/bash

awk '
{
    for (i=1; i<=NF; i++) {
        a[i][NR] = $i  # Store the i-th field of row NR in array a
    }
}
END {
    # Print the transposed data
    # for (i=1; i<=NF; i++)       
        for (j=1; j<=NR; j++)   
            printf "%s ", a[i][j]  
        }
        print ""  
    }
}
' file3.txt
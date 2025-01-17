
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

# Initialize variables
longest_word=""
longest_length=0

# Read through the file and process each word
while read -r line; do
    # Remove punctuation marks using sed (keeping only alphanumeric characters)
    line=$(echo "$line" | sed 's/[^a-zA-Z0-9 ]//g')

    # Loop through each word in the line
    for word in $line; do
        # Check the length of each word
        word_length=${#word}
        if [ $word_length -gt $longest_length ]; then
            longest_word=$word
            longest_length=$word_length
        fi
    done
done < "$file"

# Output the longest word
echo "Longest word: $longest_word"
echo "Length: $longest_length"

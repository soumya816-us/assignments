#!/bin/bash

echo "the repalcement of a file is"
# Backup Option: If you want to create a backup before modifying the file, use:

sed -i.bak "s/\b$planet\b/$soumya/g" "$(file5.txt)"


# without backup
#sed -i "s/$word_to_replace/$replacement_word/g" "$file"

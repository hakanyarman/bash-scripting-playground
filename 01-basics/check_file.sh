#!/bin/bash

# Get the first argument
FILE=$1

# -z checks if variable (string) is empty
if [ -z "$FILE" ]; then
    echo "Error: Please provide a filename!"
    echo "Usage: ./check_file.sh <filename>"
    exit 1
fi

echo "Checking file: $FILE"

# -f checks if it's a regular file (not a dir etc)
if [ -f "$FILE" ]; then
    echo "This file exists!"
    echo "-------------------"
    
    SIZE=$(ls -lh "$FILE" | awk '{print $5}')
    echo "Size: $SIZE"
    
    # -n: no newline (don't go to next line)
    echo -n "Permissions: "
    [ -r "$FILE" ] && echo -n "Read "
    [ -w "$FILE" ] && echo -n "Write "
    [ -x "$FILE" ] && echo -n "Execute"
    echo ""
    
    echo "-------------------"
    echo "Detailed ls output:"
    ls -lh "$FILE"
else
    echo "File not found."
fi

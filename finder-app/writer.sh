#!/bin/bash

# Check if both arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Please provide both the file path and the text string."
    exit 1
fi

# Assign arguments to variables
writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Attempt to write to the file
echo "$writestr" > "$writefile"

# Check if the write operation was successful
if [ $? -ne 0 ]; then
    echo "Error: Could not write to file '$writefile'."
    exit 1
fi

echo "File '$writefile' created with content:"
echo "$writestr"

#!/bin/bash

# Check if both arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Please provide both the directory path and the search string."
    exit 1
fi

# Assign arguments to variables
filesdir="$1"
searchstr="$2"

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory."
    exit 1
fi

# Use find and grep to count the number of files and matching lines
file_count=$(find "$filesdir" -type f | wc -l)
match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the result
echo "The number of files are $file_count and the number of matching lines are $match_count"

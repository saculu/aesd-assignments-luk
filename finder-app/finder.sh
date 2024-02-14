#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Both directory and search string are required"
    exit 1
fi

# Assign arguments to variables for better readability
filesdir=$1
searchstr=$2

# Check if the provided directory exists
if [ ! -d "$filesdir" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi

# Find the number of files in the directory and its subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Find the number of matching lines in the files
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the results
echo "The number of files are $num_files and the number of matching lines are $num_matches"
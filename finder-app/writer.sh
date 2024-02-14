#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Both file path and string to write are required"
    exit 1
fi

# Assign arguments to variables for better readability
writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

# Check if the directory was created
if [ ! -d "$dirpath" ]; then
    echo "Error: Directory could not be created"
    exit 1
fi

# Create the file and write the string to it
echo "$writestr" > "$writefile"

# Check if the file was created
if [ ! -f "$writefile" ]; then
    echo "Error: File could not be created"
    exit 1
fi
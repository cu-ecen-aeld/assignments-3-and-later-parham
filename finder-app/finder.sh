#!/bin/sh
# Tester script for assignment 1
# Author: Parham Nooralishahi (PHM66)

# Ensure the arguments are provided!
if [ $# -eq 0 ]; then
    echo "Arguments are mandatory"
    exit 1
fi

# Check if the first argument is a directory
if [ ! -d "$1" ]; then
    echo "$1 is not a directory path!"
    exit 1
fi

filesdir=$1
echo "FILESDIR = $filesdir"

# Check if the second argument is not empty
if [ -z "$2" ]; then
    echo "Argument 2 is unset or set to the empty string."
    exit 1
fi

searchstr=$2
echo "SEARCHSTR = $searchstr"

# The number of files in the FILESDIR directory.
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -rl "parham" ./ | wc -l)


echo "The number of files are $X and the number of matching lines are $Y"
#!/bin/sh
# Tester script for assignment 1
# Author: Parham Nooralishahi (PHM66)

# Ensure the arguments are provided!
if [ $# -eq 0 ]; then
    echo "Arguments are mandatory"
    exit 1
fi

# Check if the first argument is a valid path
# if [ ! -d "$(dirname "$1")" ]; then
#     echo "$1 is not a valid path!"
#     exit 1
# fi

mkdir -p $(dirname "$1")
writefile=$1

# Check if the second argument is not empty
if [ -z "$2" ]; then
    echo "Argument 2 is unset or set to the empty string."
    exit 1
fi

writestr=$2

echo "$writestr" > "$writefile"
if [ "$bla" = false ]; then
    echo "File creation is failed!"
    exit 1
fi
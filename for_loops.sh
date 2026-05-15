#!/bin/bash
# This script using Bash is for notes and examples for the use of: for loops

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# for loops in bash are used to repeat commands for a list of values

for i in {1..5}; do
  echo "$i"
done

# another example for arrays
arr=("red" "green" "blue")

for color in "${arr[@]}"; do
  echo "$color"
done

# the differences between for and while
# --> for is best used for known lists, while 'while' is for unknown durations
# --> for uses an iteration structure, whereas while is condition based

# practical usage (batch renaming example)
for file in *.txt; do
	mv "$file" "$file.sh" 

#COMMON MISTAKES
# --> forgetting do, done, or ;
# --> not quoting variables
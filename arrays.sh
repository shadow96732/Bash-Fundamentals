#!/bin/bash
# This script using Bash is for notes and examples for the use of: arrays

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# An array is a variable that holds multiple values
# --> they are indexed (ordered) with the index starting from 0
# --> arrays are useful to avoid repetitive code

array=("value1" "value2" "value3")

echo "${array[1]}" # the value within the [] is the index being called
echo "${array[@]}" # the @ is for all indexes

for variable in "${array[@]}"; do
	echo "$variable"
done
# the loop size stays the same regardless of the amount of values in the array (removes repetitive code)
# this can be a powerful tool for automation of tasks
# --> recall LDAP setup. an array and loop was used to add a list of users 

#COMMMON MISTAKES
# using commas in the array assignment
# --> there are no commas in arrays in Bash
# defining a variable and not an array
# --> arrays must have values enclosed within () and each value must be quoted individually
# referencing first value as index [1]
# --> the index of arrays begins at 0
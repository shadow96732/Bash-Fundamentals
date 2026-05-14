#!/bin/bash
 
# CONCEPT DESCRIPTION
# a two dimensional array is basically a table
# --> Bash does not support two-dimensional arrays, only one-dimensional,
#	HOWEVER, similar behaviour can be simulated with work arounds:


# The most "beginner-friendly" way to simulate a 2D array in bash is:

# --> Parallel Arrays (Logical Association):
# (imagine a table)
#		|	INDEX  | FIRST INITIAL | LAST INITIAL|
#		|----------|---------------|-------------|
#		|	 0     |       J       |      L      |
#		|----------|---------------|-------------|
#		|	 1     |       N       |      M      |
#		|----------|---------------|-------------|
#		|	 2	   |       H       |      H      |
#		|----------|---------------|-------------|
first_initial=("J" "N" "H")
last_initial=("L" "M" "H")
# This logically connects the indexes
# first_initial[0] <--> last_initial[0]
echo "${first_initial[0]} corresponds to ${last_initial[0]}"

# you could also create an Associative Array:
declare -A table
table["0,0"]="J"
table["0,1"]="L"
# Note: each value must be assigned individually

echo "${table[0,0]}" 

# COMMON MISTAKES
# --> expecting real 2D arrays like in python
#	--> its not supported in Bash
# --> improper 1D array (see arrays.sh for more detail)
# --> out of sync arrays
#	--> ensure all indexes match as desired or the logical relationship wont work
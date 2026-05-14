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
echo "${first_initial[0]} corresponds to ${last_initial[0]}"
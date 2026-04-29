#!/bin/bash

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# There are different types of brackets in Bash
# Each bracket type is used for different functions

# [] Single Square Brackets
#	--> used for testing conditions (comparisons, file existence and attributes)
#	--> whitespace matters. see ex. below
#	--> is portable (POSIX)
if [ 5 > 1 ]; then
	echo "true"
fi

if [ -f "file.txt" ]; then
  echo "File exists"
else
	echo "File does not exist"
fi 

# [[]] Double Square Brackets
#	--> safer conditionals
#	--> pattern matching
#	--> differences from single square brackets
#		--> supports && and ||
#		--> supports regex
#		--> more forgiving with quoting


# () Single Parenthesis/Round Brackets

# (()) Double Parenthesis/Round Brackets
# 	--> Used for evaluating expressions and performing comparisons (arithmetic/math)
#	--> only uses integers, not decimals
#	--> does not support strings	
answer=$(( 2 + 2 ))
echo "$answer"


# {} Wavy Brackets/Curly Braces
# <> Angle Brackets
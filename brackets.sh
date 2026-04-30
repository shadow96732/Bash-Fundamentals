#!/bin/bash

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# There are different types of brackets in Bash
# Each bracket type is used for different functions

# [] Single Square Brackets
#	--> used for testing conditions (comparisons, file existence and attributes)
#	--> is portable (POSIX)
#	--> variables should be quoted to avoid word splitting/globbing
#	--> whitespace matters. see ex. below
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
#	--> supports pattern matching
#	--> supports && and ||
#	--> supports regex
#	--> more forgiving with quoting than []
# --> more Bash specific and robust than []

if [[ word == *r* ]]; then 
	echo "contains the letter 'r'. Note: the asterisks are used to search the word for any r's"
fi



# () Single Parenthesis/Round Brackets
# --> often used for creating subshells and command substitution

# (()) Double Parenthesis/Round Brackets
# --> Used for evaluating expressions and performing comparisons (arithmetic/math)
#	--> only uses integers, not decimals
#	--> does not support strings	
# --> does not require $ for variables inside

answer=$(( 2 + 2 ))
echo "$answer"


# {} Wavy Brackets/Curly Braces
# --> used for brace expansion
# --> often used for command grouping or function definition

echo {1..10} #this is brace expansion of a sequence

# <> Angle Brackets
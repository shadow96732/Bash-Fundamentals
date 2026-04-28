#!/bin/bash

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# There are different types of brackets in Bash
# Each bracket type is used for different functions

# [] Single Square Brackets
#	--> used for tests
#	--> whitespace matters. see ex. below
if [ 5 > 1 ]; then
	echo "true"
fi
# [[]] Double Square Brackets
# () Single Parenthesis/Round Brackets

# (()) Double Parenthesis/Round Brackets
# 	--> Used for evaluating expressions and performing comparisons (arithmetic/math)
#	--> only uses integers, not decimals
#	--> does not support strings	

# {} Wavy Brackets/Curly Braces
# <> Angle Brackets
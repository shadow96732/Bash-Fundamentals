#!/bin/bash

# This script using Bash is for notes and examples for the uses of: conditionals

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Conditionals are expressions that evaluate true (0) or false (non-zero) and control program flow
# this can include (among others) usage in:
# --> if / elif / else → structured branching
# --> case → pattern-based branching
# --> [[ ]], [ ], (( )) → condition evaluators

# Conditionals vs If/Else
# --> Conditionals = the question
# --> if / else = one specific way to write the decision based on answers

#TYPES OF CONDITIONALS
# ----------------------------------------------------
# Comparison
# -->   ==  or -eq (equal)
# -->   !=  or -ne (not equal)
# -->   >   or -gt (greater than)
# -->   <   or -lt (less than)
# -->   >=  or -ge (greater or equal)
# -->   <=  or -le (less or equal)

year=2026
if [ "$year" == 2026 ]; then #the condition is that the variable $year must be equal to the value 2026
	echo "year is 2026"
fi

# Logical
# --> AND (&&)
# --> OR (||)
# --> NOT (!)

num1=5
num2=31
if [[ $num1 = 5 && $num2 = 31 ]]; then
	echo 'true'
else
	echo 'not true'
fi

# File Checks
# -->  -f file   regular file
# -->  -d dir    directory
# -->  -e path   exists
# -->  -r file   readable
# -->  -w file   writable
# -->  -x file   executable

if [ -f "file.txt" ]; then
    echo "File exists" # echos this text if the condition: -f "file text" is true
elif [ -d "file.txt" ]; then
    echo "It's a directory" # echos this text if the condition: -d "file text" is true
else
    echo "Not found"
fi


#example usage in a case statement
# the conditional part is "does this $variable match this pattern"
read -p "enter a letter: " variable
case "$variable" in
	a|A) echo "letter entered was A";; #pattern 1
	b|B) echo "letter entered was B";; # pattern 2
	*) echo "value entered does not match A or B";; # default
esac

# COMMON MISTAKES
# Syntax errors
# 	--> forgetting ;; in case statements
# 	--> forgetting to quote variables (risks word splitting)
# 	--> improper bracket usage (see brackets.sh)
# 	--> missing spaces
# 	--> Using the wrong conditional operator (ex. numbers and strings use different comparisons)
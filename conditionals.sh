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

# File Checks
# -->  -f file   regular file
# -->  -d dir    directory
# -->  -e path   exists
# -->  -r file   readable
# -->  -w file   writable
# -->  -x file   executable
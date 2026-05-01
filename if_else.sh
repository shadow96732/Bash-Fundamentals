#!/bin/bash
# This script using Bash is for notes and examples of the use of: if/elif/else

#CONCEPT DESCRIPTION
# ----------------------------------------------------

# if, elif, and else are used for what is known as conditional branching 
# this is when different code is executed depending on whether a condition is met (true/false)

#Basic Structure:

# if [ condition ]; then
    # code if condition is true
# elif [ another_condition ]; then
    # code if second condition is true
# else
    # code if none of the above are true
# fi

#Common use cases include but are not limited to:
# --> File and Directory checks

if [ -f "file.txt" ]; then
    echo "File exists"
elif [ -d "file.txt" ]; then
    echo "It's a directory"
else
    echo "Not found"
fi

# --> Comparisons (strings, integers, etc.)

num=10

if [ "$num" -gt 10 ]; then
    echo "Greater than 10"
elif [ "$num" -eq 10 ]; then
    echo "Exactly 10"
else
    echo "Less than 10"
fi

# --> Command success/failure

if grep "hello" file.txt; then
    echo "Found text"
else
    echo "Not found"
fi

# --> Argument validation

if [ "$#" -eq 0 ]; then
    echo "No arguments provided"
elif [ "$#" -eq 1 ]; then
    echo "One argument provided"
else
    echo "Multiple arguments provided"
fi


# COMMON MISTAKES / TROUBLESHOOTING ISSUES
# --> Incorrect use of brackets / syntax error with spacing
#	--> See brackets.sh for more detail on brackets
# --> Error with quotations / variables
# --> Mixing up conditionals/operators
#		--> there are different operators used for strings than numbers
#		--> see conditionals.sh for more detail
# --> Forgetting fi at the end
# --> Forgetting semi colon or improper placement
#   --> it should be after the end bracket of the condition
# --> Forgetting 'then'
#   --> it should be a space after the ;
#!/bin/bash
# This script using Bash is for notes and examples for the use of: redirects >

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Redirects connect commands to files (where input or output goes)
# 
# There are different types of redirects:

# Output Redirection (>)
# --> sends output(s) of a command into a file
# 	--> creates file if its missing
#	--> OVERWRITES existing files
echo "Hello world" > file.txt && cat file.txt
echo "overwrite file" > file.txt #&& cat file.txt

# Append Redirection (>>)
# --> adds output(s) to the end of a file
# 	--> it appends, whereas > overwrites
echo "append redirect" >> file.txt && cat file.txt

# Input Redirection (<)
# --> uses file as input
wc -l < file.txt
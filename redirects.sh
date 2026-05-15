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


# FILE DESCRIPTORS
# --> 0 stdin (input)
# --> 1 stdout (normal output)
# --> 2 stderr (error output)
# this can be used to control specific components

ls missingfile 2> errors.txt #redirects errors only

echo "separate redirects" > file.txt 2> errors.txt 
cat output.txt && cat errors.txt
# --> this would be for redirecting stdout and stderr separately (if there was errors)

echo "redirect together" &> all.txt
# Note: this is the modern Bash syntax
# the portable syntax is:
echo "redirect together" > all.txt 2>&1 #this means that stderr is directed to wherever stdout is going
# Note: the order matters. the redirect is placed after the location

# * discarding output
# --> it is very common to use the "black hole" file when you dont want outputs to be displayed
#	--> you would redirect commands to /dev/null



# COMMON MISTAKES
# --> using > when you dont want to *overwrite and delete all previous content
#	--> use >> append redirect instead
# --> wrong order of 2>&1 
# 	--> should be placed AFTER location
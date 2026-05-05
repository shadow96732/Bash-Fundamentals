#!/bin/bash
# This script using Bash is for notes and examples for the use of: case statements

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Case statements are control structures used for pattern-based branching.
# --> it is often used as a cleaner alternative to nested if/elif branches
# --> case statement pattern matching is case-sensitive
#	--> the 'shopt' command can be used to toggle optional shell options/behaviour, including case sensitivity
# --> ;; are used to end a clause
# 	--> while they are the standard use, other options exist as well, including:
#		--> ;;& which ends the clause and continues testing patterns
#		--> ;& end clause and run the next clause unconditionally
shopt -s nocasematch # 'nocasematch' turns of case sensitivity, and the -s flag is for enabling
read -p "Enter input (A or B or Other): " input
	case $input in
		a) #pattern 1 --> each pattern is followed by )
			echo "execute this text - matches A" ;; 
		B) #pattern 2
			echo "Matched B" ;;
		*) #default/else --> often used for error return
			echo "didnt match" ;;
	esac #used to mark the end of/close the case statement
	shopt -u nocasematch #the -u flag is for disabling the 'nocasematch' option (if you dont want it affecting the rest of the script)
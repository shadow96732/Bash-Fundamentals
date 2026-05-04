#!/bin/bash
# This script using Bash is for notes and examples for the use of: user input through the 'read' command

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# User input revolves around the 'read' command
# read takes a line(s) of input entered and assigns them to a variable(s)
# By default:
# --> Input is split on whitespace (spaces, tabs, newlines)
# --> The newline is removed
# --> Data goes into one or more variables
# 	--> extra values go into the last variable
#	--> if not enough values are supplied, the extra variables remain empty
# --> if no variable is given, it defaults storage in $REPLY

# FLAGS
# -p --> prompts the user
# -s --> silent input (hides input for passwords)
# -r --> prevents word splitting

#ex.
read -p "Enter user input here: "
echo "your input was: $REPLY"


read -p "Enter First name and Last name: " first_name last_name
read -s -p "Enter a password here: " password
while [ "$password" == "password" ]; do
	echo "pick a different password... thats not secure"
	read -p "enter a proper password: " password
done
echo -e " \n Your first name is: $first_name \n your last name is: $last_name \n the password you entered was: $password"

#COMMON MISTAKES
# -->Not specifying a given variable or not using the default $REPLY accordingly.
# -->Accidentally overwriting variables
#	--> reusing a variable is acceptable, on the condition that you do not want to reuse the old value.
# --> Improper bracket, quotation or condition usage (see brackets.sh OR conditionals.sh OR quotations.sh for more detail)
# 		--> variables should be quoted if using single []
#		--> int and str have different comparison operators
#		--> single quotes do not support variable expansion
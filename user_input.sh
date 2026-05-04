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
echo -e " \n Your first name is: $first_name \n your last name is: $last_name \n the password you entered was: $password"


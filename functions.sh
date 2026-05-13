#!/bin/bash
# This script using Bash is for notes and examples for the use of: functions

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Functions are organized blocks of code that do a specific task. 
# They help organize code, reduce repetition, and enable easy reuse of code.

# Bash has built-in functions already as well, such as cd (change directory)
# --> echo, read, printf, etc. are built-in *commands not functions

# --> function declaration includes the function name, parentheses for parameters
# --> all commands in the function should be enclosed within curly braces {}
function_name() {
	echo "commands go here"
}
function_name #this is the function call

# COMMON MISTAKES
# --> forgetting () in declaration
# --> calling the function prior to its declaration
# --> calling the you are trying to delcare within the declaration
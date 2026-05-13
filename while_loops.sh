#!/bin/bash
# This script using Bash is for notes and examples for the use of: while loops

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# A while loop repeatedly runs code while a condition is true

read -p "enter a value for x so that 99 + x = 100:
Enter here: " while_loop_variable_input
answer=$((99+while_loop_variable_input))

while [[ $answer != 100 ]]; do

	read -p 'sum of numbers doesnt equal 100. Enter a different answer: ' while_loop_variable_input
	answer=$((99+while_loop_variable_input))
	
done
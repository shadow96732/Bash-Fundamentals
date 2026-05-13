#!/bin/bash
# This script using Bash is for notes and examples for the use of: while loops

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# A while loop repeatedly runs code while a condition is true


# this is a common use case of while loops
# --> in this example, the loop is being used to repeat until it receives valid inputs from the user
read -p "enter a value for x so that 99 + x = 100:
Enter here: " while_loop_variable_input
answer=$((99+while_loop_variable_input))

while [[ $answer != 100 ]]; do

	read -p 'sum of numbers doesnt equal 100. Enter a different answer: ' while_loop_variable_input
	answer=$((99+while_loop_variable_input))

done

# a more practical example (but same concept) is password confirmation
# --> using a very similar structure to the code above, you could request the user to 
# 	  enter a confirmation password and repeat until the password matches

# --------------------------------------------------------


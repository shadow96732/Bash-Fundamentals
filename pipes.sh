#!/bin/bash
# This script using Bash is for notes and examples for the use of: pipes |

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Pipes in Bash are like a conveyor belt
# --> they take the standard output of a command and put it into another command
#	--> General form: command1 | command2
#			VISUAL MENTAL MODEL
#				--> without pipe: command --> screen
#				--> with pipe: command1 --> command2 --> screen

echo "hello world" | tr 'a-z' 'A-Z'
# in this example, this takes the output of ls as the input of sort
# --> this translates the text into CAPITALS

#COMMON MISTAKES
# --> thinking pipe means "then"
#	--> its more specific then run command1 then command2
#		--> its taking the output of command1 and using it as the input of command2
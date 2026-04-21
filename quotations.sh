#!/bin/bash
# This script using Bash is for notes and examples ofthe use of: Quotations

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Quotations are an element used in code to define text as a literal string 
# of characters - not code that is meant to be executed

# There are two main types of quotations in bash:
# 		Single Quotes '' --> used for literal text
#		Double Quotes "" --> used when you want to enable variable expansion


#Demo of single vs double quotes. Notice when running the script --> one echo cmd 
#displays in plain text the variable call, and the other displays the variable contents.
variable='variable_expansion'
echo '$variable'
echo "$variable"

#Common issues may arise from:
# ex. not ensuring quotations close the string (syntax error)
#	  undesired special character usage
#	--> \ (backslash is an escape character)
# 	--> using same quote type within quote
#	--> not using proper quotation type (double vs single)

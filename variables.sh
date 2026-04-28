#!/bin/bash
#This script using Bash is for notes and examples of: Variables (setting, calling, echo)

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# Variables are things that we store data within. 
# They can contain different data types:
# ex. Integers (int) --> +/- numbers without decimals
# 	  Float --> numbers with decimals (uses 32 bit). Used to save memory
#	  Double --> Default for numbers w/ decimals and contains double the amount of bits as a float
#     String (str) --> Default type of data in Bash. Ordered sequence of characters/text
# 
# This data is useful for many things - such as user input. Varying data can be collected from users
# and used in the script to do different things.
# ----------------------------------------------------
# ANALOGY
# 
# Think of it like a box. You can store different things inside the box.
# It is helpful to "label" this box by giving it a descriptive name so you know what 
# is inside the box/what you are using it for.
# The contents can change over time - its not a sealed box, but a reusable container
# You can replace whats inside - like money in a bank account. It still contains money
# (the usage for the box/variable stays the same) but the amount/value changes.
# Its useful because you can use this same box to add things into or take things out of
# ----------------------------------------------------

#This is an example of setting a variable. For naming convention: do NOT begin with
# numbers, capitals, or underscores. Use underscores as spaces. 
# Be descriptive with names so you and others know exactly what it is for

descriptive_variable_name_example="example string of data"

#This is an example of calling a variable within an echo command
#The use of a $ is required before the variable to call the variable
echo "This is the data stored within the variable: $descriptive_variable_name_example"

#Common issues with variable calls may come from issues with improper quotation that
# do not support variable expansion (see quotation notes for more info)
	
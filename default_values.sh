#!/bin/bash
# This script using Bash is for notes and examples for the use of: default values

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# default values are the fallback values when variables are empty or not provided

name=${USER_NAME:-Guest}

echo "$name"
# if USER_NAME is unset OR empty, the default value being used is 'Guest'
# --> note: the value is still unset afterward

read -p "enter a value: " value
echo ${value:=default}
# --> this alternate version *assigns the value if left empty or unset

echo ${USER_NAME:?error_message}
# --> alt version, displays error msg if unset or empty
# --> exits the script afterward



#!/bin/bash
# This script using Bash is for notes and examples for the use of: default values

#CONCEPT DESCRIPTION
# ----------------------------------------------------
# default values are the fallback values when variables are empty or not provided

name=${USER_NAME:-Guest}

echo "Hello, $name"
# if USER_NAME is unset, the default value its being set to is 'Guest'
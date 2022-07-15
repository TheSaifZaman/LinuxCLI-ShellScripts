#!/bin/bash
# Purpose: Check Cases
clear
echo "Please, Choose one of the options which are listed below:"
echo
echo "a = Display Date and Time"
echo "b = List file and directories"
echo "c = List users logged in"
echo
read choices
	case $choices in
		a) date;;
		b) ls -ltr;;
		c) who;;
		*) echo "Invalid cgoice - Bye."
	esac

echo

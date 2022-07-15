#!/bin/bash
# Purpose: Check the response and then show output
# Date: July 15, 2022

clear

echo "What is your name?"
read name
echo

echo "Hello Mr./Mrs. $name, Do you like working in It? (y/n)"
read answer
echo

	if [ "$answer" == y ]
	then 
		echo "You are awsome."

	elif [ "$answer" == n ]
	then
		echo "You should try IT, it's a wide field."
	fi


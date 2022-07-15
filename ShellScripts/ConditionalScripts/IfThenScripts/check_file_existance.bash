#!/bin/bash
# Purpose: Check if a file exist
# Date: July 15, 2022

clear

echo "Enter the file name you want to check it's existance:"
read filename
echo

	if [ -e ./$filename ]
	then
		echo "File exist"
	else
		echo "File doesn't exist"
	fi

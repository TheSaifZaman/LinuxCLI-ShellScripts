#!/bin/bash
# Purpose: Try Different Exist status
# Date: July 15, 2022

# Return successful Exist Status

ls -l
echo $?

pwd
echo $?

pwdd
echo ?

echo Hello
echo $?

# Return Un-Successful Exist Status

echi hello
echo $?

ls -l 

	if [ $? -eq 0 ]
	then
		echo "File Exist"
	else
		echo "File does not exist"
	fi
echo

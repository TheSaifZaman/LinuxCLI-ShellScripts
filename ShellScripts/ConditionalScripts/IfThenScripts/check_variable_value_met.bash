#!/bin/bash
# Purpose: Check if a variable value is met
# Date: July 15, 2022

a=`date | awk '{print $1}'`

	if [ "$a" == "Mon" ]
	then
		echo "Today is $a"
	else
		echo "Today is not Monday"
	fi

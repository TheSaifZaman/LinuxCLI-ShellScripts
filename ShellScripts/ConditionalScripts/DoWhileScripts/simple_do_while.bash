#!/bin/bash
# Purpose: Test Do While in Bash Script
# Date: July 15, 2022

c=1
 	while [ $c -le 5 ]
	do
		echo "Welcome $c times"
		(( c++ ))
	done
echo

count=0
number=10
	while [ $count -lt 10 ]
	do
		echo
		echo $number seconds left to stop this process $1
		echo
		sleep 1
	number=`expr $number - 1`
	count=`expr $count + 1`
	done
echo "$1 process is stopped!!!"
echo

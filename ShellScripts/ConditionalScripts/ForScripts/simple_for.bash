#!/bin/bash
# Purpose: Simple for loop
# Date: July 15, 2022

clear 
	for i in 1 2 3 4 5
	do
		echo "Welcom $i times"
	done
echo
	for j in eating running jumping playing
	do
		echo "See, Saif is $j."
	done
echo
echo "How many numbered files do you want to create?"
read numberOfFiles

	for k in {1..5}
	do
		touch $k
	done
echo
echo
echo "Do you want to delete previously created files?(y/n)"
read answer
echo
	if [ "$answer" == y ]
	then
		for l in {1..5}
		do
			rm $l
		done
	fi
echo
i=1
	for day in Mon Tue Wed Thu Fri
	do
		echo "Weekday $((i++)) : $day"
	done
echo
i=1
	for username in `awk -F: '{print $1}' /etc/passwd`
	do
		echo "Username $((i++)) : $username"
	done
echo
echo "End of script"


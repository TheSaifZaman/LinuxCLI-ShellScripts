#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Assign write permissions to files with total time it will take
# Date: Jan 26, 2024

total=`ls -l bash* | wc -l`

echo It will take $total seconds to assign permissions...
echo

for i in imran*
do
	echo Assigning write permissions to $i
	chmod a+w $i
sleep 1
done
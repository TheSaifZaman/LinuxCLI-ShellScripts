#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Status on Total Number of Files (Send alert if files are less than 20)
# Date: Jan 26, 2024

a=`ls -l file* | wc -l`

if [ $a -eq 20 ]
	then
	echo Yes there are $a files
else
	echo Files are less than 20
fi

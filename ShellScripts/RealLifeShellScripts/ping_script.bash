#!/bin/bash
# Author: Md Saif Zaman
# Date: July 29, 2022
# Purpose: This script will ping a remote host and notify
# Modified: Null

ping -cl 192.168.1.1
	if [ $? -eq 0 ]
	then
		echo OK
	else
		echo NOT OK
	fi

ping -cl 192.168.1.235 &> /dev/null
	if [ $? -eq 0 ]
	then
		echo OK
	else
		echo NOT OK
	fi


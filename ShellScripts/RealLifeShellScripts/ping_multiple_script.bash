#!/bin/bash
# Author: Md Saif Zaman
# Date: July 29, 2022
# Purpose: This script will ping multiple remote host and notify
# Modified: Null

hosts="./hosts.txt"

for ip in $(cat $hosts)
do
	ping -cl $ip &> /dev/null
	if [ $? -eq 0 ]
	then
		echo $ip is OK
	else
		echo $ip is NOT OK
	fi
done

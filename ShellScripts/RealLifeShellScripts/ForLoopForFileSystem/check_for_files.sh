#!/bin/bash
# Author: Md Saif Zaman
# Purpose: List of files you are curious about
# Date: Jan 26, 2024

FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/sshd_ssh_config
/etc/fake"

echo
for file in $FILES
do
	if [ ! -e "$file" ]	# Check if file exists.
		then
		echo $file = does not exist
		echo
	fi
done
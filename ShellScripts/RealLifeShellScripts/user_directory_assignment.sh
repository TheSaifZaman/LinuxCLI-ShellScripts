#!/bin/bash
# Author: Md Saif Zaman
# Purpose: User directory asssaignment check
# Date: Jan 26, 2024

# Become root
# vi checkdir
# cd /home
# mkdir junos

cd /home
for DIR in *
do
	CHK=$(grep -c "/home/$DIR" /etc/passwd)
    if [ $CHK -ge 1 ]
	    then
	    echo "$DIR is assigned to a user"
	else
	    echo "$DIR is NOT assigned to a user. Deleting it."
	fi
done
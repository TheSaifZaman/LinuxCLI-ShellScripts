#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Add Record
# Date: Jan 26, 2024

echo Please enter hostname:
read hostname
echo

        grep -q $hostname /home/nocturnal/ps/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- Hostname $hostname already exist
        echo
        exit 0
        fi

echo Please enter IP address:
read IP
echo

        grep -q $IP /home/nocturnal/ps/database
        if [ $? -eq 0 ]
        then
        echo ERROR -- IP $IP already exist
        echo
        exit 0
        fi


echo Please enter Description:
read description
echo

echo $hostname $IP $description >> database
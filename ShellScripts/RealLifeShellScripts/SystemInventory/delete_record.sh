#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Delete Record
# Date: Jan 26, 2024

echo Please enter hostname or IP address:
read host
echo

        grep -q $host /home/nocturnal/ps/database
        if [ $? -eq 0 ]
        then
        echo
        sed -i '/'$host'/d' /home/nocturnal/ps/database
        echo $host has been deleted
        else
        echo Record does not exist
        fi
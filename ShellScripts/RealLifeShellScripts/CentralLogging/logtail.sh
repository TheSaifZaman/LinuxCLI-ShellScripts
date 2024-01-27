#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Central Logging
# Date: Jan 26, 2024

tail -fn0 /var/log/messages | while read line # f for live incoming traffic, n0 for latest new incoming messgae
do
	echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
    if [ $? = 0 ]
        then
        echo $line >> /tmp/filtered-messages
    fi
done

# Run script in the background:
# nohup /root/logtail &
# ps -ef


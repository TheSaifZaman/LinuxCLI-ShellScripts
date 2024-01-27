#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Email Logged Message
# Date: Jan 26, 2024

systems="X@hotmail.com,Y@email.com"

if [ -s /tmp/filtered-messages ]
    then
    cat /tmp/filtered-messages | sort | uniq | mail -s "CHECK: Syslog Errors" $systems
    rm /tmp/filtered-messages
else
fi

# Schedule the Notification to run every 15 minutes:
# crontab -e
# */15 * * * * /root/log_alert
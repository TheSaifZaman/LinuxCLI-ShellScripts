#!/bin/bash
# Author: Md Saif Zaman
# Date: July 31, 2022
# Purpose: This script is to Delete older files
# Modified

# Create a file with old time stamp to test: touch -d "Thu, 1 March 2018 12:30:00" a
# ls -ltr
find ./ -mtime +90 -exec ls -l {} \;
find ./ -mtime +90 -exec rm {} \;

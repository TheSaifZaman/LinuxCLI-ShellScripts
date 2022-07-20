#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Format the output of admin commands
# Date: July 20, 2022

# ./..... | awk '(print $1)'

date | awk '(print $1)'
uptime | awk '(print $3)'
df -h | grep root

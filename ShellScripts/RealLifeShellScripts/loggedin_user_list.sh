#!/bin/bash
# Author: Md Saif Zaman
# Purpose: List of Users Logged in Today
# Date: Jan 26, 2024

today=`date | awk '{print $1,$2,$3}'` # First three field of Date
#last | grep $today | awk '{print $1}'
last | grep "$today"

# Get Input Form User
# echo "please enter day (e.g. Mon)"
# read d
# echo "please enter month (e.g. Aug)"
# read m
# echo "please enter date (e.g. 28)"
# read da
# last | grep "$d $m $da"
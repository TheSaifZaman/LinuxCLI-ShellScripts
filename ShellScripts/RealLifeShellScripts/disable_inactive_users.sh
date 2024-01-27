#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Disable Users account
# Date: Jan 26, 2024

# Test Commands

# lastlog -b 90
# lastlog -b 90 | tail -n+2
# lastlog -b 90 | tail -n+2 
# lastlog | tail -n+2 | grep 'test' | awk '{print $1}'




# Disable account with For loop
a=`lastlog | tail -n+2 | grep 'test' | awk '{print $1}'`

for i in $a
do
usermod -L $i
done




# Disable using xargs

lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} echo {}


lastlog | tail -n+2 | grep 'test' | awk '{print $1}' | xargs -I{} usermod -L {}
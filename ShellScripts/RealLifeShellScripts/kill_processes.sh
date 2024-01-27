#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Kill Process
# Date: Jan 26, 2024

# Run commands
# sleep 600
# ps -ef | grep "sleep 600"
# ps -ef | grep "sleep 600" | grep -v grep 
# ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' 
# ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} echo {}
# ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}



# Create a script

ps -ef | grep "sleep 600" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}
echo All sleeping processes are killed

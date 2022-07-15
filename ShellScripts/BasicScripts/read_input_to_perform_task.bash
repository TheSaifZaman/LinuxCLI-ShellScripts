#!/bin/bash
# Purpose: Read input to perfom certain task
# Date: July 15, 2022

echo "Enter the file name to be changed it's permisssion:"
read fileName
chmod 700 $fileName
ls -ltr $fileName

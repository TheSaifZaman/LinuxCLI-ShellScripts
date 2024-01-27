#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Delete Record
# Date: Jan 26, 2024

echo
echo Please select one of the following options:
echo
echo 'a = Add a record'
echo 'd = Delete a record'
echo
read choice

case $choice in
a) ./add-record;;
d) ./del-record;;
*) echo Invalid choice - Bye.
esac
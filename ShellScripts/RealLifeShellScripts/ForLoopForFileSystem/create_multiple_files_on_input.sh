#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Creating Multiple File On Input
# Date: Jan 26, 2024

echo How many files do you want?
read count
echo
echo Files names should start with?
read name
for i in $(seq 1 $count)
do
	touch $name.$i
done
#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Rename all *.txt files extension to none
# Date: Jan 26, 2024

for filename in *.txt
do
	mv $filename ${filename%.txt}.none # % here is a wild card sign
done
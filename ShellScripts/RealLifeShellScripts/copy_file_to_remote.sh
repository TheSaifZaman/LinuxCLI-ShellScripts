#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Copy Files to remote
# Date: Jan 26, 2024

for HOST in ubuntu01 fedora02 centos03 rhel06
do
	scp somefile $HOST:/var/tmp/
done
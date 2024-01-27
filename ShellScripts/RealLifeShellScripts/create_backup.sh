#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Backup /etc and /var directory
# Date: Jan 26, 2024

# Create backup
tar cvf /tem/backup.tar /etc /var

# Compress backup
gzip backup.tar

find backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
    echo Backup was created
    echo
    echo Archiving backup

    scp /tmp/backup.tar.gz root@192.168.1.x:/path
else
    echo Backup failed
fi
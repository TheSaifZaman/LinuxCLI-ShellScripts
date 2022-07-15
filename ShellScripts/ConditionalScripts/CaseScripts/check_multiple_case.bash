#!/bin/bash
# Purpose: Check Multiple Case
# Date: July 15, 2022

clear
now=$(date +"%a")
	case $now in
		Mon)
			echo "Full Backup";;
		Tue|Wed|Thu|Fri)
			echo "Partial Backup";;
		Sat|Sun)
			echo "No Backup";;
		*) ;;
	esac

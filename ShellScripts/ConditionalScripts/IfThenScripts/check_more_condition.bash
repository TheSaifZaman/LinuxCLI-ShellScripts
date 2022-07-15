#!/bin/bash
# Purpose: Check more condition
# Date: July 15, 2022

clear

echo "Enter the file name:"
read fileName

	if [ -e ./$fileName ]
	then 
		echo "File Exist."
	fi

	if [ -s ./$fileName ]
	then 
		echo "File Exist and is not empty."
	fi

	if [ -f ./$fileName ]
	then 
		echo "File Exist and is not a directory."
	fi

	if [ -d ./$fileName ]
	then 
		echo "Directory Exist."
	fi

	if [ -x ./$fileName ]
	then 
		echo "File is executable."
	fi

	if [ -w ./$fileName ]
	then 
		echo "File is writable."
	fi

	if [ -r ./$fileName ]
	then 
		echo "File is readable."
	fi

# -eq equal to for numbers
# ==  equal to for letters
# -ne not equal to for numbers
# !== not equal to for letters
# -lt less than
# -le less than or equal to
# -gt greater than
# -ge greater than or equal to

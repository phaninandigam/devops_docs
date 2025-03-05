#!/bin/bash

echo "Please enter the pattern"
read pattern

grep -rlv "$pattern" *>filenames

if [ $? -eq 0 ]
then 
	echo "We have found the below files which doesn't conatin the pattern $pattern"
	cat filenames
else
	echo "The file doesn't exist"
fi

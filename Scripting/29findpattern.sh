#!/bin/bash

echo "Please enter the pattern"
read pattern

grep -rl "$pattern" *>filenames

if [ $? -eq 0 ]
then 
	echo "We have found the below files"
	cat filenames
else
	echo "The file doesn't exist"
fi

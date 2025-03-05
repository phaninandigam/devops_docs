#!/bin/bash

echo "Please enter the integer number to compare"
read num

if [ $num -eq 3 ]
then
	echo "$num is equal to 3"
else
	echo "$num is not equal to 3"
fi


#!/bin/bash

echo "Please enter the number:"
read number

val=`expr $number % 2`
if [ $val -eq 0 ]
then 
	echo "The given number $number is even"
else
	echo "The given number $number is odd"
fi

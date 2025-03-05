#!/bin/bash

echo "Please enter the number:"
read number

val=`expr $number % 7`
if [ $val -eq 0 ]
then 
	echo "The given number $number is divisble by 7"
else
	echo "The given number $number is not divisble by 7"
fi

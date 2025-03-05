#!/bin/bash

echo "Please enter the integer value for N:"
read num
factorial=1

while [ $num -gt 0 ]
do
	factorial=`expr $factorial \* $num`
	num=`expr $num - 1`
done

echo "The factorial of N  number is $factorial"

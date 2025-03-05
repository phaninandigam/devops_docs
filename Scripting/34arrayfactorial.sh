#!/bin/bash
#iset -x

number="5 6 8 10"

for value in $number
do
	sum=1
	initial_value=1

	while [ $initial_value -le $value ]
	do
		sum=`expr $sum \* $initial_value`
		initial_value=`expr $initial_value + 1`
	done
	echo "The factorial of $value is $sum"

done


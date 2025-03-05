#!/bin/bash
#set -x

number="10 20 30 40"
sum=0

for i in $number
do
	#echo "The value of i is $i"
	sum=`expr $sum + $i`
done

echo "The sum is $sum"

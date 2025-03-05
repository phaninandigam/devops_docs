#!/bin/bash
#set -x

echo "Please enter the number:"
read num
val=1

echo -e "\nHere is the miltiplication for the provided number: $num"
while [ $num -gt 0 ] && [ $val -le 10 ]
do
#	echo "The valu of num is $num abd val i s $val"
	multiply=`expr $num \* $val`
	val=`expr $val + 1`
	echo $multiply
done


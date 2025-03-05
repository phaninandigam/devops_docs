#!/bin/bash

echo "Please enter the number"
read num
val=1
while [ $val -le $num ]
do 
	sleep $val
	echo "$val"
	val=`expr $val + 1`
done

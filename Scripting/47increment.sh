#!/bin/bash

echo "Please enter the number:"
read num
val=1

while [ $val -le 5 ]
do
		echo $num
		num=`expr $num - 1`
		val=`expr $val + 1`
done


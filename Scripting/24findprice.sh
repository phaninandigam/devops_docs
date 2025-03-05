#!/bin/bash
#set -x

echo "Please enter the filename:"
read filename

echo "Please enter the price  you are looking for:"
read price

echo "The vechile names which are equal to or above the price  $price"
while read line
do
        car_price=`echo "$line"|awk -F " " '{print $4}'`
	if [ $car_price -ge $price ]
	then 	
                echo "$line"|awk -F " " '{print $1,$4}'
        fi

done<$filename

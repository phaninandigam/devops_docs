#!/bin/bash
#set -x

echo "Please enter the filename:"
read filename

echo "Pleae enter the color you are looking for:"
read color

echo "The vechile names which are in color $color"
while read line
do
        car_color=`echo "$line"|awk -F " " '{print $2}'`
	if [ $car_color == $color ]
	then 	
                echo "$line"|awk -F " " '{print $1}'
        fi

done<$filename

#!/bin/bash
set -x

echo "Please enter the filename:"
read filename

echo "Pleae enter the built year"
read year

echo "The vechile names which were built before $year"
while read line
do
        built_year=`echo "$line"|awk -F " " '{print $3}'`
        if [ $built_year -le $year ]
	then
		#echo "The vechile names which were built before $year" 	
                echo "$line"|awk -F " " '{print i$1}'
        fi

done<$filename

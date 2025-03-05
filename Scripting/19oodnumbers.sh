#!/bin/bash

echo "Please enter the nth number:"
read num

while [ $num -gt 0 ]
do
	#echo "num value $num"
	x=`expr $num % 2`
	if [ $x -ne 0 ]
        then 
                echo "$num"
                num=`expr $num - 1`
	else
		num=`expr $num - 1`
		
	fi

done

echo "Done"

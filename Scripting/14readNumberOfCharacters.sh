#!/bin/bash

echo "Please enter the name of the file:"
read file_name

while read line
do
	count=`echo "$line"|wc -c`
	linenumber=1
	linenumber=`expr $linenumber + 1`
	echo "The number of characters on line $linenumber is $count"



done < $file_name

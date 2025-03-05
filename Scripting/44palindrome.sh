#!/bin/bash


echo "Please enter the string:"
read val

#char_count=`echo $val|wc -c`
#reverse=""
#echo $val|cut -c 

revrese=`echo $val | rev`

if [ $val == $revrese ]
then
	echo "The given string $val  is a Palindrome"
else
	echo $revrese
	echo "The given string $val is not a palindrome"
fi

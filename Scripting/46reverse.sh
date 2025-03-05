#!/bin/bash

echo "Please enter the name:"
read name

char_count=$(echo $name|wc -c)
if [ $char_count -gt 0 ]
then
	echo "The char count is $char_count"
	d=`echo $name|cut -c 6`
	echo $d
fi
	


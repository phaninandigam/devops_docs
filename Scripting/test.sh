#!/bin/bash

echo "Please enter the file name:"
read name

if [ -s $name ]
then 
	cat $name
else
	echo "The file doesn't contain lines"
fi

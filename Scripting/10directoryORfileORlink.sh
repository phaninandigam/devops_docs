#!/bin/bash

echo "Enter the path to find if it's a file or directory or link"
read name

if [ -L $name ]
then 
	echo "The given path is a link"
elif [ -d $name ]
then 
	echo "The given path is a directory"
elif [ -f $name ]
then
	echo "The given path is a file"
else
	echo "The path doesn't exists"
fi

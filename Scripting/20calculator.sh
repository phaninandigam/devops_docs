#!/bin/bash

echo "Please enter the operation:"
read operation

if [ $operation == "+" ]
then 
	echo "Hi"
elif [ $operation == "-" ]
then 
	echo "sub"
else
	echo "Last"
fi

#!/bin/bash

echo "Please enter the name:"
read name

length=`echo $name|wc -c`
echo $length
a=`echo $name | cut -c $length`
echo $a

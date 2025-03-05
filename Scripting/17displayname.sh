#!/bin/bash

echo "Please enter the string:"
read string
echo "Please enter the file name:"
read filename
val=$(grep -i "$string" $filename)

echo "$val"

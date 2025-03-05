#!/bin/bash

echo "Please enter the string:"
read string

echo "The entered string is $string"
val=$(echo "$string" | rev)
echo "$val"

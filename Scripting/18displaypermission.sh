#!/bin/bash

echo "Please enter the filename:"
read filename

val=$(ls -l $filename |cut -d " " -f1|cut -c 2-4)
echo "$val"

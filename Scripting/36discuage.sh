#!/bin/bash


current_usage=$(df -h .|awk -F " " 'NR>1 {print $(NF-1)}'|cut -c 1-2)
echo $current_usage

if [ $current_usage -gt 35 ]
then 
	echo "The usage has been crossed"
	echo "memory reached thresold value" | mail -s "Clean up the memory"  phani.nandigam@moengage.com
fi

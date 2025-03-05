#!/bin/bash

top -b -n 1 > CPUfile

current_usage=`awk -F " " 'NR==8 {print $(NF-3)}' CPUfile|cut -d "." -f1`

 echo $current_usage
if [ $current_usage -gt 70 ]
then
	echo $current_usage
	echo "The CPU has been increased thresold value $current_usage, please take actions"|mail -s "CPU Usage has reached thresold" phani.nandigam@moengage.com
fi

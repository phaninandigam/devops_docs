#!/bin/bash

day=`date '+%A'`

echo $day

case $day in
	'Monday') touch fil1 fil2
		;;
	'Tuesday') mv fil1 file1
		   mv fil2 file2
		;;
	'Wednesday') vi file1
		;;
	'Saturday'|'Sunday') echo "No Task"

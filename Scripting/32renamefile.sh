#!/bin/bash
ls *.txt>filenames

while read line
do
	name=`echo "$line" |awk -F "." '{print $1}'`
	#echo $name
	#echo $line
	echo "line value $line"
	mv $line $name.html
done<filenames

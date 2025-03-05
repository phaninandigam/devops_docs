#!/bin/bash

echo "Please enter the file:"
read filename

echo "Please enter the department you are looking for:"
read department

echo "$(awk -F "" 'NR==1 {print $0}' $filename)"
while read line
do
	department_value=`echo "$line"|awk -F " " '{print $NF}'`
	if [ $department == $department_value ]
	then
		echo "$line"|awk -F " " '{print $0}'
	fi
done<$filename

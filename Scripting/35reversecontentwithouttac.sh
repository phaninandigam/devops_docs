#!/bin/bash

echo "Please enter the file name:"
read filename
echo -e "\n"

number_of_lines=$(wc -l $filename|cut -d " " -f1)

while [ $number_of_lines -gt 0 ]
do
	$(head -$number_of_lines $filename|tail -1>>reversefile)
	number_of_lines=`expr $number_of_lines - 1`
done

echo -e "The orginal file is:\n"
cat $filename

echo -e "\n*****************************************\n"

echo -e "The reverse file is:\n"
cat reversefile
echo -e "\n"

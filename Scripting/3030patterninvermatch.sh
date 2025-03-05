#!/bin/bash

echo "Enter pattern:"
read pattern

ls>test
allfiles=$(ls)
pattern_match=$(grep -il "$pattern" *)


for item in $allfiles
do
	for item1 in $pattern_match
	do
		if [ $item == $item1 ]
		then
			delete=$(grep -n "$item1" test|awk -F ":" '{print $(NF-1)}')
			$(sed -i "${delete}d" test)
		fi
	done


done
echo -e "\nThe files which doesn't contain the provided pattern are:"
cat test



#!/bin/bash

n="2 3 4"
declare -a names
for i in {1..5}
do
	read names(i)
	echo $names
done

echo "$names"
echo $n

#!/bin/bash

echo "Please enter the value:"
read value

date '+%A'
echo $date

case $value in
	'Monday') echo "The files which were modified 10 days ago" 
		find . -type f -mtime +5
		;;
	'Tuesday') echo "Please enter the pattern:"
		read pattern
		echo "Below files conatin the provided pattern"
		grep -i "$pattern" *
		;;
	'Wednesday') echo "Please enter the pattern:"
                read pattern
                echo "Below files doesn't conatin the provided pattern"
                grep -iL "$pattern" *
                ;;
	'Thrusday') echo "Please enter the path"
                read path

		if [ -L $path ]
		then
			echo "The given path is a link"
		elif [ -f $path ]
		then
			echo "The given path is a file"
		elif [ -d $path ]
		then
			echo " The give path is a directory"
		else
			echo "We didn't find the file"
		fi
                ;;
	'Friday') lines=`find . -type f -empty|wc -l`
		if [ $lines -eq 0 ]
		then 
			echo "No empty files"
		else
			echo "We have found the $lines empty files"
			find . -type f -empty

		fi
		;;
	'Saturday' | 'Sunday') echo -e "No Task for today \n Enjoy the Weekend"
		;;
	*) echo "Please enter the correct value"
		;;
esac

#!/bin/bash

day=`date "+%a"`

case $day in
        'Mon') find /home/ubuntu -type f -mtime 10 >> filesmodiifed10daysAgo
               cat filesmodiifed10daysAgo
               ;;
       'Tue') a=$(grep -ilr 'Phani' *)
              echo "$a"
               ;;
        'Wed') b=$(grep -Lri 'Phani' *)
                echo "$b"
               ;;
        'Thu') echo "Enter the path which you want to check"
                read name
                if [ -L $name ]
                then
                   echo "The given path is a link."
                elif [ -d $name ]
                then
                   echo "The given path is a directory."
                elif [ -f $name ]
                then
                       echo "The given path is a file"
                else
                     echo "The path doesnot exist"
                fi
                 ;;
                'Fri') c=$(find ./scripting -type f -empty > empytfilenames)
                 d=$(cat empytfilenames | wc -l)
                if [ $d -ne 0 ]
                then
                    cat empytfilenames
                else
                    echo "Empty file doesnt exist"
                fi
                ;;
esac

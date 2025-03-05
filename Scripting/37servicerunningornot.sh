#!/bin/bash

service_name="ss jenkins"

for i in $service_name
do
	ps -C $i

	if [ $? -ne 0 ]
	then 
		echo $i>>/home/ubuntu/scripting/services
	fi
done

if [ -s services ]
then
	cat services | mail -s "The services are not running" phani.nandigam@moengage.com
	#rm -rf services
fi


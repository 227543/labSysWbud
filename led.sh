#!/bin/bash

cd $lpath
if [ "$1" = "on" ]
then
	echo 1 | sudo tee brightness
fi

if [ "$1" = "off" ]
then
	echo 0 | sudo tee brightness
fi
if [ "$1" = "blink" ]
then
for i in $(eval echo "{1..$2}")
do
		echo 1 | sudo tee brightness
		sleep $3
		echo 0 | sudo tee brightness
		sleep $3
	done
fi

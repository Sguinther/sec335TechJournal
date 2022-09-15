#!/bin/bash



function pingg
{
	for i in 10.0.5.{2..50}; do
		ping= ping -c 1 $i
		
		if [ $? == 0 ];then
			echo "$i is up"
			echo ''$i'' >> sweep.txt
		else
			echo "$i is down"
			
		fi
	done
}

pingg

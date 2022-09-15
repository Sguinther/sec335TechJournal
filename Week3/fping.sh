#!/bin/bash



function fpingg
{
	for i in 10.0.5.{2..255}; do
		fping= fping -c 1 $i
		
		if [ $? == 0 ];then
			echo "$i is up"
			echo ''$i'' >> sweep2.txt
		else
			echo "$i is down"
			
		fi
	done
}

fpingg

#!/bin/bash



function nmap2
{
	for i in {2..50}; do
		echo "$i"
		map= nmap -sn 10.0.5.$i | grep "for" | awk -F' ' '{print $5}' >>sweep3.txt 
	done
}
	

nmap2

#!/bin/bash

hostfile=$1
portfile=$2
echo "host,port"
for host in $(cat $hostfile); do
	for port in $(cat $portfile); do
		timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port"
		if timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port" 
		then
			echo "$host,$port" > opentargets.txt
		fi
		if ! bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null
		then
			echo "$port is not open on $host"
		fi
	done
done


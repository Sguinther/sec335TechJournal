#!/bin/bash

networkpre=$1
dnsserv=$2

function nsbaby

{
	echo "resolving dns for $networkpre"
	for i in $(seq 1 254); do
		(nslookup $networkpre.$i $dnsserv | grep 'name') 
	done
}

nsbaby


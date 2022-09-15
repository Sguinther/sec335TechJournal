#!/bin/bash

host=$1
dns=$2
suffix=".{0..255}"
host2="$host$suffix"
for i in $host.{0..255}; do
	nslookup $i $dns
done


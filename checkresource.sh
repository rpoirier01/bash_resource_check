#!/bin/bash

#Scan and print remaining disk space, memory usage, processes and network connections in human readable terms
#Usage: ./checkresource <outputFile> <portList> for normal logging, 
#for verbose logging, ./checkresource <outputFile> <portList> v
#Verbose logging features additional information on all running processes but will create much longer logs
echo -------------- >> $1
date +%m/%d/%H:%M:%S >> $1
echo -------------- >> $1
echo "Disk statistics: " >>$1
df -h >> $1
echo "End Disk statistics" >>$1
echo ------------- >> $1
echo "Memory statistics" >> $1
free --mega >>$1
echo "End Memory statistics" >> $1
echo ------------- >>$1
echo "Process statistics" >> $1
VERBOSE="${3:-$N}"
if [ $VERBOSE = 'v' ]; then 
	ps -A >>$1
	echo "End Process statistics" >> $1
else
	ps >> $1
	echo "End Process statistics" >> $1
fi
echo "Network Connection statistics" >> $1
mapfile -t PORTFILE < $2
#echo ${PORTFILE[@]}
for item in ${PORTFILE[@]}
do
	#Added "Port being checked for clarity", -tuln to make the output easier to parse, both chatgpt suggestions
	echo Port being checked is: $item >> $1
	netstat -tuln | grep "$item" >> $1
done

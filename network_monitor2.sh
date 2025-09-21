#!/bin/bash

websites=("google.com" "github.com" "1.1.1.1")
index=0
NOW=$(date '+%F_%H:%M:%S')

if [ -d logs ];then 

while [ $index -lt ${#websites[@]} ]; do
echo "Checking the latency and reachability of for ${websites[index]} and storing results in ${NOW}.txt!"
ping -c 3 ${websites[$index]} >> logs/${NOW}.txt
curl -ls ${websites[$index]} >> logs/${NOW}.txt
((index++)) 
done

else
echo "Creating the logs directory and storing logs in there"
mkdir logs
while [ $index -lt ${#websites[@]} ]; do
echo "Checking the latency and reachability of for ${websites[index]} and storing results in ${NOW}.txt!"
ping -c 3 ${websites[$index]} >> logs/${NOW}.txt
curl -ls ${websites[$index]} >> logs/${NOW}.txt
((index++)) 
done
fi
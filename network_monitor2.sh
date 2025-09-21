#!/bin/bash

websites=("google.com" "github.com" "1.1.1.1")
index=0
NOW=$(date '+%F_%H:%M:%S')

if [ -d output ];then 

while [ $index -lt ${#websites[@]} ]; do
echo "Checking the latency and reachability of for ${websites[index]} and storing results in ${NOW}.txt!"
ping -c 3 ${websites[$index]} >> output/${NOW}.txt
curl -ls ${websites[$index]} >> output/${NOW}.txt
((index++)) 
done

else
echo "Creating the output directory and storing logs in there"
mkdir output
while [ $index -lt ${#websites[@]} ]; do
echo "Checking the latency and reachability of for ${websites[index]} and storing results in ${NOW}.txt!"
ping -c 3 ${websites[$index]} >> output/${NOW}.txt
curl -ls ${websites[$index]} >> output/${NOW}.txt
((index++)) 
done
fi
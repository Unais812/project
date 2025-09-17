#!/bin/bash

websites=("google.com" "github.com" "1.1.1.1")
index=0

while [ $index -lt ${#websites[@]} ]; do
echo "checking the latency and reachability of the chosen websites and storing results in YYYY-MM-DD_HHMM.txt.!"
ping -c 3 ${websites[$index]} >> YYYY-MM-DD_HHMM.txt
curl -ls ${websites[$index]} >> YYYY-MM-DD_HHMM.txt
((index++)) 
done 

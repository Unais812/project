#!/bin/bash
for i in {1..50}; do

echo "Do you wish to proceed? (yes=1 no=0)"
read input 

if [ $input -eq 0 ]; then 
    exit 0
else 

echo "Which website do you want to check?:"
read website
echo "checking the latency and reachability of -- $website -- and storing results in YYYY-MM-DD_HHMM.txt.!"

if [ -f "YYYY-MM-DD_HHMM.txt" ]; then 
    ping -c 3 "$website" >> YYYY-MM-DD_HHMM.txt
    curl -ls $website >> YYYY-MM-DD_HHMM.txt
else
    touch YYYY-MM-DD_HHMM.txt
    ping -c 3 "$website" >> YYYY-MM-DD_HHMM.txt
    curl -ls $website >> YYYY-MM-DD_HHMM.txt
fi 

echo "results stored in YYYY-MM-DD_HHMM.txt."
fi
done
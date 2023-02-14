#!/bin/bash

### A simple script to show all connected devices on the network
## Check if arguments empty of not
if [[ -z $1 || -z $2 ]]
then
    echo "Usage: $0 <num_counts> <timeout>"
    exit 0
fi
SUCCESS=" 0% packet"
for i in {1..10}
do
    result=`ping "192.168.1.${i}" -c $1 -w $2`
    #result=`ping "192.168.1.${i}" -c 1 -w 1`
    # Whenever we want to use a wild card like * use if [[  ]] only
    if [[ ${result} == *${SUCCESS}* ]]
    then
        echo "192.168.1.${i} exists"
    fi
done
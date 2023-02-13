#!/bin/bash
### Various ways of expressing logical expressions with if conditions
if [ 1 -eq 1 -a 4 -gt 3 ]
then
    echo "Rule #1"
fi

if [ 1 -eq 1 ] && [ 4 -gt 3 ]
then
    echo "Rule #2"
fi

if [[ 1 -eq 1 && 4 -gt 3 ]]
then
    echo "Rule #3"
fi

if (( 001==1 ))
then
    echo "C-Style Rule"
fi

x=0
if (( ++x ))
then
    echo "Rule #5"
fi








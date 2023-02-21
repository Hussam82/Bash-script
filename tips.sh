#!/bin/bash

# 1- declare
# 2- read with while
# 3- if no [ ]
# 4- shift
# 5- indirect access
# 6- string delete
# 7- ${var operation value}

## declare
# declare -l lowerstring
# declare -u upperstring
# declare -a array
# declare -A dict
# lowerstring="ABC"
# upperstring="abc"
# array[0]=1
# array[1]=2
# echo ${upperstring}
# echo ${lowerstring}
# echo ${array[@]}
# dict["ssid"]="test"
# dict["pass"]="123"
# echo ${dict["ssid"]}
# echo ${dict["pass"]}

## Read with while
# ps | while
# read pid tty time_ cmd
# do
# echo "${pid} working with ${cmd}"
# done

## If not [ ]
# if
# ls
# #true
# #asdasd
# then
# echo "Hi"
# else
# echo "False"
# fi


## Shift
# echo $1 and $10
# shift
# echo $1 and ${10}

## Indirect accessing
# y=name
# name="hussam"
# echo ${y}
# echo ${name}
# echo ${!y}

## String delete
# name="hussam ali ahmed"
# echo ${name#*ali} # ${var#prefix} or ${var%postfix}
# echo ${name%ali*}
# echo ${name} | cut -d " " -f 2

## ${var operation value}
#x=1
# y=${x:- "X is not defined"} # y = x if x is not defined else y = the string
# echo ${x}
# echo ${y}

# x=1
# y=${x:= "X is not defined"} # y = x = string if x is not defined else y = x
# echo ${x}
# echo ${y}
x=ls
echo ${x:?} # Check whether x is defined or not if x is not defined it gives error else it executes the command


#!/bin/bash

<<COMMENTS
$0 specifies the name of the script to be invoked
$1 - $9 stores the names of the first 9 arguments or can be used as the arguments' positions.
$# specifies the total number (count) of arguments passed to the script.
$* stores all the command line arguments by joining them together. 1 2 3
$@ stores the list of arguments as an array
$$ specifies the process ID of the current script.
$? specifies the exit status of the last command or the most recent execution process.
COMMENTS

### Check the PID by ps -aux | grep PID
# echo $$
# sleep 1000
# echo $0

# echo $1
# echo $2

# echo $# #counts

# echo $@ #list

# echo $*

# sdasdsadsa
# echo $?

# asdasasdas
# if [ $? -eq 0 ]
# then
#     echo "Success"
# else
#     echo "Failed"
# fi

### Arguments with an array
# args=("$@") #Generate Array of arguments
# echo "Arguments to the shell"
# echo ${args[0]} ${args[1]}

for i in "$@" #Acts
do
    echo ${i}
done

for i in "$*"
do
    echo ${i}
done
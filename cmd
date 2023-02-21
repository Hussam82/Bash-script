#!/bin/bash

### FIrst we have to add the current direotory to the PATH variable in ~/.bashrc
### PATH="/home/hussam/Desktop/Bash-script:${PATH}"

### Store the location of the file which has the commands you want
cmdlist=~/.cmdlist

### Create the tempcmd file which will store the command to be run temporarly
exe=/tmp/tempcmd

# Check if there is arguments or not
if [ $# == 0 ]
then
    echo "Usage cmd <command>"
    echo -e "\n your commands: "
    cat ${cmdlist}
fi

key=$1
cmd=""
# Read the file
while read line
do
    # First find the command
    echo ${line} | grep ^${key}
    # If the command is found successfully store it in the cmd variable
    if [ $? -eq 0 ]
    then
        cmd=`echo ${line} | grep ^${key} | cut -d "=" -f 2`
        echo ${cmd}
    fi
done < ${cmdlist}

if [[ -z ${cmd} ]]
then
    echo "$1 not found"
    echo "These are the available commands: "
    cat ${cmdlist}
else
    echo ${cmd} > ${exe}
    bash ${exe}
fi
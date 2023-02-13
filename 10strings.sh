#!/bin/bash
# str1="Welcome"
# str2="Ahmed"
# if [ ${str1} = ${str2} ]
# then
# echo "Equal strings"
# elif [ ${str1} != ${str2} ]
# then
# echo "Not Equal Strings"
# else
# echo "Dead Code"
# fi

# x="HelloWorld"
# y="Hello"
# if [ ${x} \< ${y} ]
# then
#     echo "${x} is less than ${y}"
# else
#     echo "${x} is greater than ${y}"
# fi

# str=""
# if [ -n ${str} ]
# then
# echo "String is not empty"
# else
# echo "String is empty"
# fi

# str="s"
# if [ -z ${str} ]
# then
# echo "String is empty"
# else
# echo "String is not empty"
# fi

### TO find the length of a string
# str="Hello Ahmed"
# length=${#str}
# echo "Length is ${length}"

### Get length of lines,words and chars
# cat 02inputs.sh | wc

# str="Hello Ahmed Mohamed"
# length=`echo ${str} | wc -w`
# echo "Length of '${str}' is ${length}"

### SPlitting Strings
# str="Ahmed mohamed ali"
# IFS=' ' # Delimiter
# read -ra ADDR <<< "${str}" # Append str into an array called ADDR
# echo "${ADDR[0]}"

# str="Ahmed,mohamed,ali"
# IFS=',' # Delimiter
# read -ra ADDR <<< "${str}" # Append str into an array called ADDR
# #echo "${ADDR[0]}"
# for i in ${ADDR[@]}
# do
#     echo "${i}"
# done

### Slicing Strings
str="Ahmed Mohamed Ali"
subStr=${str:6:7}
echo ${subStr}
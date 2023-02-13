#!/bin/bash
# for i in 1 2 3 4 5 6
# do
# echo ${i}
# done

# set -x
# for i in {1..6}
# do
# echo ${i}
# done
# set +x

# learn="Start learning from Javatpoint"
# for i in ${learn}
# do
# echo ${i}
# done

#To store output of a command in a variable
# #var=ls
# var=`ls`
# for i in ${var}
# do
# echo ${i}
# done

# To read the contents of all files inside a folder
var=`ls test`
for i in ${var}
do
echo "Content of ${i} is :"
cat "./test/${i}"
done

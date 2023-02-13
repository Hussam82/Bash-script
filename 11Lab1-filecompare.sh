#!/bin/bash


if [ -z $1 -o -z $2 ]
then
    echo "Usage 11Lab1-filecompare <file1> <file2>"
    exit 0
fi
file1=`md5sum $1`
file2=`md5sum $2`
# echo "File 1 is ${file1}"
# echo "FIle 2 is ${file2}"
read -ra ADDR1 <<<${file1}
read -ra ADDR2 <<<${file2}
IFS=' '
echo ${ADDR1[0]}
echo ${ADDR2[0]}

if [ ${ADDR1[0]} = ${ADDR2[0]} ]
then
    echo "Identical Files"
else
    echo "Not identical Files"
fi
#!/bin/bash

### Define Array --> two ways
declare -a ARRAY_NAME=("Java" "Python" "HTML" "CSS" 3)
ARRAY_NAME2=("Java" "Python" "HTML" "CSS" "JavaScript")

## Indexing
# ${ARRAY_NAME[index]} # Get value
# ${ARRAY_NAME[@]}    # Get all elements
# ${#ARRAY_NAME[@]}   # Get length of the array

echo ${ARRAY_NAME[0]}
echo ${ARRAY_NAME[@]}
echo ${#ARRAY_NAME[@]}

## Overwriting
ARRAY_NAME[0]="cpp"
echo ${ARRAY_NAME[@]}

## Delete element
unset ARRAY_NAME[0]
echo ${ARRAY_NAME[@]}

## Slicing
SLICED_ARRAY=(${ARRAY_NAME[@]:1:2})
echo ${SLICED_ARRAY[@]}

## Looping in array
for i in ${ARRAY_NAME2[@]}
do
    echo ${i}
done

## Get index of each element in array
for i in ${!ARRAY_NAME2[@]}
do
    echo "${i} - ${ARRAY_NAME2[${i}]}"
done
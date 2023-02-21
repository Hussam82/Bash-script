#!/bin/bash

# file=`cat ./test/file1.txt`
# echo ${file}

# file1=${cat test/file1.txt}
# echo $file1

# file2=${<./test/file1.txt}
# echo $file2

# while read line
# do
#     #echo ${line}
#     if [[ -z ${line} ]]
#     then
#         echo "Thanks"
#     elif [ ${line}=="This is file1" ]
#     then
#         echo "We are printing the first line only"
#     fi
# done < ./test/file1.txt

### To include a file contains some variables
## Check first if this file exists
if [ -f defines.sh ]
then
    source defines.sh
    echo ${hi}
else
    echo "File does not exist"
fi





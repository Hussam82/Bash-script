#!/bin/bash

#### One line if condition
# test "ahmed" = "ahmed" && echo "true" || echo "false"
# test "ahmed" = "ali" && echo "true" || echo "false"
# test 001 = 1 && echo "true" || echo "false"
# test 001 -eq 1 && echo "true" || echo "false"


### Using normal if condition
# if [ 001 -eq 1 ]
# then
# echo "true"
# else
# echo "false"
# fi

# read -p "Enter a string: " str
# if [ -z ${str} ]
# then
# echo "String is empty"
# else
# echo "String is not empty and contains ${str}"
# fi

# read -p "Enter a number: " number
# if [ ${number} -lt 125 ]
# then
#     echo "Value is less than 125"
# elif [ ${number} -lt 200 ]
# then
#     echo "Value is between 125 and 200"
# else
#     echo "Value is greater than 200"
# fi

# read -p "Enter variable x: " x
# test -z ${x} && echo "empty" || echo "string has a value"

test -f "./01echo.sh" && echo "File exists" || echo "File does not exist"
test -f "./011echo.sh" && echo "File exists" || echo "File does not exist"

if [ -f "./01echo.sh" ]
then
    echo "File exists"
else
    echo "File does not exist"
fi



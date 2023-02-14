#!/bin/bash

### Various ways to create a function
# test
# {
#     echo "Hello"
# }
# test

# test()
# {
#     echo "Hello"
# }
# test

# function test
# {
#     echo "Hello"
# }
# test

# function test()
# {
#     echo "Hello"
# }
# test

# DisplayHelloArgument()
# {
#     echo $0 $1 $2 $3 $4
#     echo $#
#     echo $@
# }
# DisplayHelloArgument hello from other side
# DisplayHelloArgument $1 $2 hello ahmed

add()
{
    sum=$(( $1 + $2 ))
    return ${sum}
}
a=10
b=20
add ${a} ${b}
result=$? # Store the return value in variable result
echo ${result}

# Use ./12functions.sh and source 12functions.sh then echo $var to see the difference
# ./ --> runs the script in a child bash and displays output in main bash
# source or . / --> runs the script in the main bash
export var=15 






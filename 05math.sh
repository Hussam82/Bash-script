#!/bin/bash

# z= expr 1 + 2
# echo ${z}

# let sum=3+10
# echo ${sum}

### Post Increment
num=3
echo $(( num++ ))

### Pre Increment
num=3
echo $(( ++num ))

num=3
((num++))
echo ${num}

x=4
y=5
echo "x = ${x}, y = ${y}"
echo "Addition of x and y"
echo $(( ${x} + ${y} ))
echo "Subtraction of x and y"
echo $(( ${x} - ${y} ))
echo "Multiplication of x and y"
echo $(( ${x} * ${y} ))
echo "Division of x and y"
echo $(( ${x} / ${y} ))
echo "Exponential of x and y"
echo $(( ${x} ** ${y} ))
echo "Modular Division of x and y"
echo $(( ${x} % ${y} ))
echo "Incrementing x by 5"
echo $(( x+=5 ))
echo "Multiplying x by 5"
echo $(( x*=5 ))
echo "Remainder of dividing x by 5"
echo $(( x%=5 ))


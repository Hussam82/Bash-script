#!/bin/bash

### Readonly works with variables and functions
## Variables

# readonly x=10
# x=12

### Or

# x=10
# readonly x
# x=15

## Functions
# fun()
# {
#     echo "Hello"
# }
# fun
# readonly -f fun
# fun()
# {
#     echo "Welcome"
# }

## Shifting

echo "Total number of arguments $#" # Print number of arguments
echo "The arguments are: $*"
echo "The first argument is $1"
shift 2 # Shift 2 to the left
echo "The first argument after shift 2 is $1"






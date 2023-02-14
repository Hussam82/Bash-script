#!/bin/bash

### Global
# name="Hussam"
# DisplayGlobal()
# {
#     name="Ahmed"
#     echo "${name}"
# }
# DisplayGlobal
# echo ${name}

### Local
name="Hussam"
DisplayGlobal()
{
    local name="Ahmed"
    echo "${name}"
}
DisplayGlobal
echo ${name}

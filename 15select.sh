#!/bin/bash

### Create a select without break
# select name in ahmed ali mohamed
# do  
#     echo ${name}
# done

select name in ahmed ali mohamed
do
    case ${name} in
    ahmed)
        echo ${name}
    ;;
    *)
    break
    ;;
    esac
done
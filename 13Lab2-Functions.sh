#!/bin/bash

### First we get the json file by using this api and display it in json format

### Create two functions to parse the json file by python and bash
function json_parser_using_python()
{
    res=`curl "https://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt" | json_pp -f json`
    export json_file=${res}
    python3 -c "import os,json; x=os.environ['json_file']; #print(x);
body=json.loads(x)['data']['timings']; #print(body);
for i,j in body.items(): print(i, j)"
}
#json_parser_using_python

function json_parser_using_bash()
{
    res=`curl "https://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt" | json_pp -f json`
    echo ${res} | jq ".data.timings"
}
json_parser_using_bash
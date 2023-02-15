#!/bin/bash

### Get battery information
BATTERY_S=`acpi -b`
read -a BATTERY_V <<< ${BATTERY_S}


## This if condition handles two bugs:
#  1) when the battery percentage is 1 digit or 2 digit or 3 digits
#  2) when the battery is online the battery percentage is displayed 56%
#     and when the battery is offline the battery percentage is displayed 56%,
ADAPTER_INFO=`acpi -a`
read -a ADAPTER_S <<< ${ADAPTER_INFO}
if [ ${ADAPTER_S[2]} = "on-line" ]
then
    if [ ${#BATTERY_V[3]} -eq 2 ]
    then
        val=${BATTERY_V[3]:0:1}
    elif [ ${#BATTERY_V[3]} -eq 3 ]
    then
        val=${BATTERY_V[3]:0:2}
    elif [ ${#BATTERY_V[3]} -eq 4 ]
    then
        val=${BATTERY_V[3]:0:3}
    fi
else
    if [ ${#BATTERY_V[3]} -eq 3 ]
    then
        val=${BATTERY_V[3]:0:1}
    elif [ ${#BATTERY_V[3]} -eq 4 ]
    then
        val=${BATTERY_V[3]:0:2}
    elif [ ${#BATTERY_V[3]} -eq 5 ]
    then
        val=${BATTERY_V[3]:0:3}
    fi    
fi

## Another way of solving the bugs mentioned above
val=${BATTERY_V[3]::-1} # This deletes the last character in the sub-string
temp=`echo ${val} | grep "%"`
if [ $? -eq 0 ]
then
    val=${val::-1}
fi

while [ true ]
do
    if [ ${val} -lt 60 ]
    then
        notify-send "Take care your battery is less than 50%"
        notify-send "Please plug-in your charger"
        sleep 5
        acpi -a | grep on
        if [ $? -eq 0 ]
        then
            notify-send "Thanks for charging and please run the script again"
            break
        fi
    fi
done

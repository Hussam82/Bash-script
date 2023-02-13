#!/bin/bash

echo "Do you know me?"
read -p "Enter your answer " answer
case $answer in
yes|YES|Yes)
    echo "Hello"
;;
no|NO|No)
    echo "My name is hussam"
;;
*)
    echo "Default"
;;
esac
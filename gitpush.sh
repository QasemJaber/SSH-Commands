#!/bin/bash

condition=$1

if [ $condition == "add" ]; then
    read -p "Enter file name: " filename
    git add $filename
    git push
    
elif [ $condition == "rm" ]; then
    read -p "Enter file name: " filename
    git rm $filename
    git push
    
else
    echo 'Sorry, I do not understand this command'
fi

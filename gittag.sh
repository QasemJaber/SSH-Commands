#!/bin/bash

condition=$1

if [ $condition == "update" ]; then
    read -p "Enter tag name: " tagname
    git tag --delete $tagname
    git push --delete origin $tagname
    git tag $tagname
    git push origin $tagname
    echo 'The tag has been successfully updated.'

elif [ $condition == "delete" ]; then
    read -p "Enter tag name: " tagname
    git tag --delete $tagname
    git push --delete origin $tagname
    echo 'The tag has been successfully deleted.'

elif [ $condition == "tag" ]; then
    read -p "Enter tag name: " tagname
    git tag $tagname
    git push origin $tagname
    echo 'The tag has been successfully created.'

else
    echo 'Sorry, I do not understand this command'
fi

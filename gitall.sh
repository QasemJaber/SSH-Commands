#!/bin/bash

filename=$1

git add $filename
git commit
git push

sleep 1

read -p "Enter tag name: " tagname
git tag --delete $tagname
git push --delete origin $tagname 
git tag $tagname
git push origin $tagname

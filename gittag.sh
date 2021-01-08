#!/bin/bash                                                                                                                                     

condition=$1

#Updating the specified tag                                                                                                                     
if [ $condition == "update" ]; then
    read -p "Enter the tag you wish to be updated: " tagname
    git tag --delete $tagname
    git push --delete origin $tagname
    git tag $tagname
    git push origin $tagname
    echo 'The tag has been successfully updated.'

#Deleteting the specified tag                                                                                                                   
elif [ $condition == "delete" ]; then
    read -p "Enter the tag you wish to be deleted: " tagname
    git tag --delete $tagname
    git push --delete origin $tagname
    echo 'The tag has been successfully deleted.'

#Creating the specified tag                                                                                                                     
elif [ $condition == "tag" ]; then
    read -p "Enter the tag you wish to be created: " tagname
    git tag $tagname
    git push origin $tagname
    echo 'The tag has been successfully created.'

else
    echo 'Sorry, I do not understand this command'
fi

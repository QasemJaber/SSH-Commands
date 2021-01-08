#!/bin/bash                                                                                                                                     
                                                                                                                                                
filename=$1                                                                                                                                     
                                                                                                                                                
#Add and push the file                                                                                                                          
git add $filename                                                                                                                               
git commit                                                                                                                                      
git push                                                                                                                                        
                                                                                                                                                
#Create a tag/update the tag for the file                                                                                                       
read -p "Enter tag name: " tagname                                                                                                              
git tag --delete $tagname                                                                                                                       
git push --delete origin $tagname                                                                                                               
git tag $tagname                                                                                                                                
git push origin $tagname 

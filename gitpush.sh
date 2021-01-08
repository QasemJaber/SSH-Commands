File Edit Options Buffers Tools Sh-Script Help                                                                                                  
#!/bin/bash                                                                                                                                     

condition=$1

#Adding files to GitHub                                                                                                                         
if [ $condition == "add" ]; then
    read -p "Enter the file you wish to add to GitHub: " filename
    git add $filename
    git commit
    git push

#Removing Files from GitHub                                                                                                                     
elif [ $condition == "rm" ]; then
    read -p "Enter the file you wish to delete from GitHub: " filename
    git rm $filename
    git commit
    git push

else
    echo 'Sorry, I do not understand this command'
fi








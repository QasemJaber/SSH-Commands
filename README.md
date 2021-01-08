# SSH-Commands
This contains some bash code I created to simplify some secure shell commands.

gittag.sh:

----This can either update your tag(delete it, push it, recreate it, and then push again, automatically), delete the specified tag, or make the specified tag.----

----To use this, just do "bash gittag.sh (tag/delete/update)", it will then prompt you for a tag name, once you enter the tag name, you are done!----

**NOTE, if you wish to update a tag and it display's an error message in the middle of the execution and then continue executing anyways, then this means you wrote down the wrong tag name and a new tag was created and pushed to GitHub, and your pre-existing tag has not been updated, make sure to run the "bash gittag.sh update" and type the tag anme correctly to make sure your tag is updated. Once this is compete, delete the tag that you have accidentally created (using "bash gittag.sh delete"), and you will be good to go.**

gitpush.sh:

----This will add or remove files from GitHub.----
----To use this, just do "bash gitpush.sh (add/rm)", it will then prompt you for the file name you wish to add/remove to/from GitHub, once you enter the file name, all you have to do is commit your changes and you are done!----


gitpush.sh:

----This will add a file to GitHub and then make/update a tag.----

---- To use this, just do "bash gitall.sh (filename)", after doing this command, commit your changes, it will then prompt you for the name of the tag that you want to make/update, once you enter the tag name, all you have to do is commit your changes and you are done!**----

**NOTE, if you do not have the tag in GitHub already, and you wish to create one, it may display an error message in the middle of the execution and then continue executing anyways, this will NOT effect the creation of your tag whatsoever, but if you wish to update a tag and it display's an error message in the middle of the execution and then continue executing anyways, then this means you wrote down the wrong tag name and a new tag was created and pushed to GitHub, and your pre-existing tag has not been updated, make sure to run the "bash gittag.sh update" and type the tag anme correctly to make sure your tag is updated. Once this is compete, delete the tag that you have accidentally created by using the "bash gittag.sh delete" command and you will be good to go.**

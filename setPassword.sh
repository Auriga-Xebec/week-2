#!/bin/bash

## 1. ask the user to enter a file name
## 2. ask the user to enter a secret password
## 3. save the password to secret.txt in the file they choose.


### Prompt the user for a file name
echo "Please enter a file name: " && read file_name



if [ -x "$file_name" ] ; then

    ### If file name exits cd into it.
    cd "$file_name" || exit 0

    ### Prompt for password, hash it and save it in the selected dir

    read -sp "Password: " && echo "$REPLY" | sha256sum > secret.txt

else
    mkdir "$file_name" && cd "$file_name"    

    read -sp "Password: " && echo "$REPLY" | sha256sum > secret.txt
   

fi


#!/bin/bash

## 1. ask the user to enter a file name
## 2. ask the user to enter a secret password
## 3. save the password to secret.txt in the file they choose.


### Prompt the user for a file name
echo "Please enter a file name: " && read file_name

pass_make(){
    read -sp "Password: " && echo "$REPLY" | sha256sum > secret.txt
}

if [ -x "$file_name" ] ; then

    cd "$file_name" && pass_make

else

    mkdir "$file_name" && cd "$file_name" && pass_make
    
fi


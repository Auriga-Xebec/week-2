#!/bin/bash

bash passwordcheck.sh
con=$?

if [ $con -eq 0 ]; then
    echo "(1) Folder Creator
(2) Copy folder
(3) Set Password" 
 
    read selection
    
    case "$selection" in

        1)
        bash foldermaker.sh
        ;;
        2)
        bash foldercopier.sh
        ;;
        3)
        bash setPassword.sh
        ;;
        *)
        echo "selection does not exist"
        ;;
    esac

else 
    echo "fuck"

fi
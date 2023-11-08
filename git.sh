#!/bin/bash

 if [ -d .git ]; then 

     git add .

     if [ $# -le 0 ]; then
        read -p "Please  enter the commit message: " commit_message
            git commit -m "$commit_message"
            else    
            git commit -m $1
        fi

        git push
else 
    echo "you are not in the right place😂"
fi              
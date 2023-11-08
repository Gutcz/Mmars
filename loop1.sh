#!/bin/bash

#for variable some people call it var i just without a reason 
# for var in $@; do 
## run some conmands 
# done

for var in $(ls); do
     if [ $var == file1 ]; then
     chmod 777 $var
     fi 
done     
  # break 
  # exit 
  # check the loop
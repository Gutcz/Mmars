#!/bin/bash

read -p "Please specify you age:" age

 if [ $age -le 12 ] 
  then 
echo "Hello, Future programmer"

  elif [ $age -gt 12 -a $age -lt 30 ] 
   then 
echo "Hello, Junior programmer"
   
   elif [ $age -ge 30 -a $age -le 65 ]
    then
echo "Hello, Senior programmer"    

  else 
  echo "Problem"

fi 
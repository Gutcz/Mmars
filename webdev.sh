#!/bin/bash
if [ $# -le 0 ]; then
   echo "Usage: $0 <file_path>"
   exit 1
fi

file_path=$1

for existing_web in $(ls /var/www/html); do
      

for web in $(cat templates.txt); do
     name="$(echo $web | awk -F "/" '{print $9 }' | awk -F "." '{ print $1 }')"
     wget $web -P /tmp/
     unzip /tmp/$name.zip -d /var/www/html
     rm -f /tmp/*.zip
done     
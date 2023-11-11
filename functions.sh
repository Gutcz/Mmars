# function 

# function_name () { ;}
write=$1
content=$2

function cert_writer {
    touch /var/www/html/certificates/$1
    echo "$content" > /var/www/html/certificates/$1
}

if [ $# -lt 2 ]; then
    echo "Usage: $0 <certificate filename> <file content>"
    exit 1 
fi

cert_writer
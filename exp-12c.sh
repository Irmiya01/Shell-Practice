#! /bin/bash
# Login System
isUser(){
    attempts=3
    while (($attempts > 0))
    do
        read -s -p "Enter password: " passwd
        echo
        result=$(usr="$usr" passwd="$passwd" awk -F"::"  '$1==ENVIRON["usr"] && $2==ENVIRON["passwd"] {print "1"}' login_records.txt)
        if [[ "$result" == "1" ]]
        then
            echo "Authentication Successful"
            return 0
        else
            ((attempts--))
            echo "You have $attempts attempts!"
        fi
    done
}

read -p "Enter username:" usr
if grep -q "^$usr::" login_records.txt
then
    isUser
else
    echo "Can't find User!"
fi        
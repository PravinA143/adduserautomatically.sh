#! /bin/bash

echo "**************** this script will delete user automatically ******************" 

sleep 3

for i in `cat /newusernames` 

do

userdel -r  $i

done

echo "************* verify user deleted from /etc/passwd file **********************"

tail -10 /etc/passwd

exit




#! /bin/bash
echo "*********** this script will help in adding user automatically ****************"
sleep 3

for i in `cat /newusernames` 

do

useradd $i
 	 
echo "redhat" | passwd --stdin $i

done

echo "************* check useradded in /etc/passwd file below ****************"
sleep 3
tail -9 /etc/passwd
exit

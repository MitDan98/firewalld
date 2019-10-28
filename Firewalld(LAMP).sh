#!/bin/bash
#Author: Mititi Dan
#Mail: danmititi@gmail.com
#Firewall command for httpd 
#LAMP hint 1
sudo firewall-cmd --permanent --zone=public --add-service=http
if($? -ne 0); then
 echo "This service was added already"
 exit 1

else 
echo "Was added with succes"
exit 1
fi
 
sudo firewall-cmd --permanent --zone=public --add-service=https
if($? -ne 0); then
 echo "This service was added already"
 exit 1

else 
echo"Was added with succes"
exit 1
fi
sudo firewall-cmd --zone=public --permanent --add-port=80
if($? -ne 0); then
 echo "this port was open already "
 exit 1

else 
echo "This port was open with succes!"
exit 1
fi

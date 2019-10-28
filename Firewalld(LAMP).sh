#!/bin/bash
#Author: Mititi Dan
#Mail: danmititi@gmail.com
#Firewall command for httpd 
#LAMP hint 1
sudo firewall-cmd --permanent --zone=public --add-service=http
if($? -ne 0); then
 echo "Was added with succes"
 exit 1

elif 
echo"Error!"
exit 1
fi
 
sudo firewall-cmd --permanent --zone=public --add-service=https
if($? -ne 0); then
 echo "Was added with succes"
 exit 1

elif 
echo"Error!"
exit 1
fi
sudo firewall-cmd --zone=public --permanent --add-port=80
if($? -ne 0); then
 echo "Was added port with succes"
 exit 1

elif 
echo"Error!"
exit 1
fi

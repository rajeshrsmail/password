#!/bin/bash
MYPATH=/opt/iplist
for i in `cat $MYPATH` 
do
echo "########################"
echo $i 
ssh root@$i 'echo "root:rohini" | chpasswd'
if [ $? = 0 ];then
echo "Root password change for $i was successful" 
else
echo "Root password change for $i was not successful" 
echo 
echo
fi
ssh root@$i 'echo "rajesh:rohini" | chpasswd'
if [ $? = 0 ];then
echo "Rajesh password change for $i was successful"
else
echo "Rajesh password change for $i was not successful" 
fi
echo
echo
done



#/bin/bash

uid=$(id -u ) 
yum list installed |grep "\<httpd.$(uname -p)\>" > /dev/null 2>&1
if [[ $? -ne 0 ]]
then
echo "httpd package is not installed"
exit 2
fi
if [[ $uid -eq 0 ]]
then
echo "proceeding"
else
echo " you are not authorized"
exit 1
fi
if [[ $? -eq 0 ]]
then
echo "httpd package is installed"
if [[ $? -eq 0 ]]
then
echo "#########################################"
echo -e "\tStarting httpd service"
echo "#########################################"
systemctl start httpd
if [[ $? -eq 0 ]]
then
echo "httpd service has been started successfully"
else
echo "failed to start service"
fi
fi
fi

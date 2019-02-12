#1/bin/bash

ps -ef |grep -i yum |grep -v grep
exit_status=$?
while [ ${exit_status} -eq 0 ]
do
 echo " still installing"
done
echo "job completed"
exit

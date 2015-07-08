#!/usr/bin/bash

username="user"
password="pass"
server="spacawalk.local"


for it in $(seq ${1:-"25"})
do
	echo "run.. $it"
	nohup docker run -t spacewalk-client /root/register.sh $username $password $server > /dev/null 2>&1  &
done

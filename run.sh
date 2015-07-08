#!/usr/bin/bash

username="user"
password="pass"
server="spacawalk.local"

for it in $(seq ${1:-"5"})
do
	echo "run.. $it"
    nohup docker run -i -t -e RHN_SERVER=$server  -e RHN_USER=$username \
            -e RHN_PASS=$password spacewalk-client > /dev/null 2>&1 &
done

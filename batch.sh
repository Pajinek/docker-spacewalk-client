#!/usr/bin/bash
# author: Pavel Studenik <pstudeni@redhat.com>

# batch.sh <login> <password> <spacewalk hostname> <number of registrations>

username=$1
password=$2
server=$3

for it in $(seq ${4:-"5"})
do
   echo "run.. $it"
   docker run -d -t spacewalk-client /root/register.sh $username \
            $password $server > /dev/null 2>&1
done

#!/usr/bin/bash

/root/register.sh $1 $2 $3 && \
echo /usr/bin/python /usr/sbin/osad --pid-file /var/run/osad.pid
/usr/bin/python -s /usr/sbin/osad --pid-file /var/run/osad.pid -N

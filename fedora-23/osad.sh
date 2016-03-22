#!/usr/bin/bash

/root/register.sh $1 $2 $3 && \

rhn_check -vv && \
/usr/bin/python -s /usr/sbin/osad --pid-file /var/run/osad.pid -N

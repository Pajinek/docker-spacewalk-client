#!/usr/bin/bash
# author: Pavel Studenik <pstudeni@redhat.com>
# year: 2015

for it in $( docker ps -a -q ); 
do 
    log=$( docker logs $it | grep -i -v D-bus | grep -i error; )
    [ ! -z "$log" ] && \
        echo -e "$it:\n---------------------\n$log\n\n";
done

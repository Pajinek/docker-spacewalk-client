#!/bin/bash
# author: Pavel Studenik <pstudeni@redhat.com>

# register.sh <username> <password> <server>

function show_log {
   count_log_2=$( cat /var/log/up2date | wc -l )
   num=$(( count_log_2 - $1 ))
   tail -n $num /var/log/up2date
}

RHN_USER=${1:-$RHN_USER}
RHN_PASS=${2:-$RHN_PASS}
RHN_SERVER=${3:-$RHN_SERVER}

curl -o /usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT http://$RHN_SERVER/pub/RHN-ORG-TRUSTED-SSL-CERT

touch /var/log/up2date
count_log=$( cat /var/log/up2date | wc -l  )

rhnreg_ks --username=$RHN_USER --password=$RHN_PASS --force \
 --serverUrl=https://$RHN_SERVER/XMLRPC \
 --sslCACert=/usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT || show_log count_log

rhn_check -vv || echo "ERROR: system is not registered"


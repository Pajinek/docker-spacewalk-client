#!/usr/bin/bash
# author: Pavel Studenik <pstudeni@redhat.com>

# register.sh <username> <password> <server>

RHN_USER=${1:-$RHN_USER}
RHN_PASS=${2:-$RHN_PASS}
RHN_SERVER=${3:-$RHN_SERVER}

wget http://$RHN_SERVER/pub/RHN-ORG-TRUSTED-SSL-CERT -O /usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT

rhnreg_ks --username=$RHN_USER --password=$RHN_PASS --force \
 --serverUrl=https://$RHN_SERVER/XMLRPC \
 --sslCACert=/usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT

rhn_check -vv

yum install rhncfg-* --nogpgcheck -y
rhn-actions-control --enable-all


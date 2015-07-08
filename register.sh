#!/usr/bin/bash
# register.sh <username> <password> <server>

RHN_USER=${1:-$RHN_USER}
RHN_PASS=${2:-$RHN_PASS}
RHN_SERVER=${3:-$RHN_SERVER}

wget http://$RHN_SERVER/pub/RHN-ORG-TRUSTED-SSL-CERT -O /usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT

rhnreg_ks --username=$RHN_USER --serverUrl=https://$RHN_SERVER/XMLRPC --sslCACert=/usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT --profilename=client --password=$RHN_PASS --force

rhn_check -vv


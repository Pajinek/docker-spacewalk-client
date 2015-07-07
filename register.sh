#!/usr/bin/bash
# register.sh <username> <password> <server>

wget http://$3/pub/RHN-ORG-TRUSTED-SSL-CERT -O /usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT

rhnreg_ks --username=$1 --serverUrl=https://$3/XMLRPC --sslCACert=/usr/share/rhn/RHN-ORG-TRUSTED-SSL-CERT --profilename=client --password=$2 --force


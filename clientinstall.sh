#!/bin/bash

apt -y install openldap-clients nss-pam-ldapd
read -p 'Enter LDAP Server IP Address: ' ip
authconfig --enableldap --enableldapauth --ldapserver=$ip --ldapbasedn="dc=users,dc=automations,dc=com" --enablemkhomedir --update

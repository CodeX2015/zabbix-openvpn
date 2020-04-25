#!/bin/bash

source=`pwd`
path=/etc/openvpn/ccd # path to certificate directory
cd $path
users=(*)
cd $source
#users=`ls -F $path | sed 's/\///g'` # array of certificate name

echo "{"
echo "\"data\":["

comma=""
for user in "${users[@]}"
do
	#echo "\"$user\""
    echo "    $comma{\"{#VPNUSER}\":\"$user\"}"
    comma=","
done

echo "    ]"
echo "}"

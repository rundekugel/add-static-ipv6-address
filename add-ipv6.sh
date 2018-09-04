#!/bin/sh

#this will add a fix ip
#copy this to: /etc/NetworkManager/dispatcher.d/add-ipv6.sh 

IFACE=$1
STATUS=$2
NEW_IP=dddd::1

#adjust network interface name

if [ "$IFACE" = "wls3" ] ; then
  case "$STATUS" in 
	up)
        ip -6 addr add $NEW_IP/64 dev $IFACE
	;;
	down)
        ip -6 addr add $NEW_IP/64 dev $IFACE
	;;
	*)
	;;
  esac	
fi

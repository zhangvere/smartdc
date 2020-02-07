#!/bin/sh

#read ip and and netmask and MAC GW set

ip_file="/media/app/ip.conf"

set_mac()
{
    ifconfig eth0 down
    sleep 1
    ifconfig eth0 hw ether "$1" up
    sleep 1
}


if [ $# -eq 0 ]
then
    echo "usage: $0 [dhcp MAC]/[ip mask MAC gw]"
    return 1
fi

# if parameter 1 is dhcp then using dynamic IP
if [ $1 = "dhcp" ]
then
    #echo "set MAC..."
    set_mac $2

    #echo "udhcpc start set IP"
    udhcpc -i eth0
else
    #echo "set MAC..."
    set_mac $3

    #echo "start seting IP and netmask..."
    ifconfig eth0 $1 netmask $2
    
    if [ $# -eq 4 ]
    then
        #echo "setting default gateway..."
        route add default gw "$4"
    fi
fi

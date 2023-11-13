#!/bin/bash



export WIRESHARK_CONFIG="/workspaces/data-capture/wireshark/config"
export INTERFACE="enp5s0"

# monitor 


# docker run --net=host -v $WIRESHARK_CONFIG:/data corfr/tcpdump -i $INTERFACE -w /data/port22.pcap 'tcp port 22'


# read pcap file
docker run --net=host -v $WIRESHARK_CONFIG:/data corfr/tcpdump -r /data/$1 -A -X -vvv -n -e -tttt -i $INTERFACE

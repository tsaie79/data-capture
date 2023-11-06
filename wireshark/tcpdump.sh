#!/bin/bash



export WIRESHARK_CONFIG="/workspaces/data-capture/wireshark/config"
export INTERFACE="enp5s0"


docker run --net=host -v $WIRESHARK_CONFIG:/data corfr/tcpdump -i $INTERFACE -w /data/dump.pcap 

# use wirehark to read the dump.pcap file

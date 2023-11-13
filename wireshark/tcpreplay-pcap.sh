#!/bin/bash


export WIRESHARK_CONFIG="/workspaces/data-capture/wireshark/config"
export INTERFACE="enp5s0"

# docker run --net host --rm -t -v $WIRESHARK_CONFIG:/data -i dgarros/tcpreplay /sbin/my_init -- bash -l

docker run --net host --rm -t -v $WIRESHARK_CONFIG:/data -i dgarros/tcpreplay /usr/bin/tcpreplay --intf1=$INTERFACE dump.pcap

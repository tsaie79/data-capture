#!/bin/bash

docker run -d --net=host --cap-add=NET_ADMIN -v /workspaces/data-capture/wireshark/config:/config --restart unless-stopped linuxserver/wireshark:latest

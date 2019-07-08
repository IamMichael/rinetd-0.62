#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"

if [[ $UID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

cp -r rinetd  /usr/local
cp rinetd.service /etc/systemd/system

systemctl daemon-reload
systemctl start  rinetd.service
systemctl enable rinetd.service
systemctl status rinetd.service



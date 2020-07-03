#!/bin/sh
sudo sysctl fs.inotify.max_user_watches=582222 && sudo sysctl -w vm.max_map_count=262144 && sudo sysctl -p
echo "fs.inotify.max_user_watches=582222" | sudo tee -a /etc/sysctl.conf
echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.conf

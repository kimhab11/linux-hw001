#!/bin/sh

echo "input username: "
read $userName
sudo adduser $userName
sudo adduser $userName sudo 

grep '^sudo' /etc/group

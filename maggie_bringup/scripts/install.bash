#!/bin/bash

# add 'user' to the groups 'dialout', and 'video'

sudo usermod -a -G dialout, video $USER

# copy udev rules

echo "Copying udev rules..."

cd `rospack find maggie_bringup`/config/
sudo cp 99-maggie.rules /etc/udev/rules.d/

# restart and reload udev rules

echo "Restarting udev rules..."

sudo service udev restart
sudo udevadm control --reload-rules
sudo udevadm trigger

echo "FINISH!"

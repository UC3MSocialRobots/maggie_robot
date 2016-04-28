#!/bin/bash

## Config permissions

# add 'user' to the groups 'dialout', and 'video'

sudo usermod -a -G dialout,video $USER

# copy udev rules

echo "Copying udev rules..."

sudo cp `rospack find maggie_bringup`/config/99-maggie.rules /etc/udev/rules.d/

# restart and reload udev rules

echo "Restarting udev rules..."

sudo service udev restart
sudo udevadm control --reload-rules
sudo udevadm trigger

# config alsa audio device

echo "Replacing alsa and pulse config files to set the Logitech USB card as default audio device"

sudo cp `rospack find maggie_bringup`/config/default.pa /etc/pulse/default.pa
sudo cp `rospack find maggie_bringup`/config/alsa-base.conf /etc/modprobe.d/alsa-base.conf

# config loquendo license

echo "Replacing MAC addres to works the Loquendo licence"

sudo apt-get install macchanger 
sudo cp `rospack find maggie_bringup`/config/interfaces /etc/network/interfaces

echo "FINISH!"

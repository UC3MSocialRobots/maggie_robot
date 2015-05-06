#!/bin/bash

### copy udev rules

echo "Copying udev rules..."

cd `rospack find maggie_bringup`/config/
cp 99-maggie.rules /etc/udev/rules.d/

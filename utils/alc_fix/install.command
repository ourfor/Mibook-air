#!/bin/bash

path=${0%/*}
sudo cp -a "$path/ALCPlugFix" /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCPlugFix
sudo chown root:wheel /usr/local/bin/ALCPlugFix
sudo cp -a "$path/hda-verb" /usr/local/bin
sudo chmod 755 /usr/local/bin/hda-verb
sudo chown root:wheel /usr/local/bin/hda-verb
sudo cp -a "$path/top.ourfor.start.headphone.plist" /Library/LaunchAgents/
sudo chmod 644 /Library/LaunchAgents/top.ourfor.start.headerphone.plist
sudo chown root:wheel /Library/LaunchAgents/top.ourfor.start.headerphone.plist
sudo launchctl load /Library/LaunchAgents/top.ourfor.start.headerphone.plist
echo 'The installation of the ALCPlugFix daemon is complete'
bash read -p 'Press any key to Exit'

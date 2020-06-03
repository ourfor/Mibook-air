#!/bin/bash


path=${0%/*}
sudo launchctl remove /Library/LaunchAgents/top.ourfor.start.headerphone.plist
sudo rm -rf /Library/LaunchAgents/top.ourfor.start.headerphone.plist
sudo rm -rf /usr/local/bin/ALCPlugFix
sudo rm -rf /usr/local/bin/hda-verb

echo 'Uninstall the ALCPlugFix daemon complete!'
bash read -p 'Press any key to exit'

#!/bin/zsh

# This is a simple zsh shell script.

# echo "Hello, world!"

adb disconnect
vared -p "Last 3 digits of watch IP address: " -c last3 
ip=$(echo "192.168.4.$last3")

adb connect $ip
sleep 10
adb -s $ip install pixel-watchface.apk
adb disconnect




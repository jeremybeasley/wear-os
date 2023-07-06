#!/bin/zsh

# This is a simple zsh shell script.

# echo "Hello, world!"

adb disconnect
vared -p "Last 6 digits of watch IP address: " -c last6 
ip=$(echo "192.168.$last6")

adb connect $ip
sleep 10
adb -s $ip install pixel-watchface.apk
adb disconnect




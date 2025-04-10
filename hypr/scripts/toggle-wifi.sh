#!/bin/bash

wifi_status=$(nmcli radio wifi)

if [ "$wifi_status" = "enabled" ]; then
    nmcli radio wifi off
    notify-send "📡 WiFi Disabled"
else
    nmcli radio wifi on
    notify-send "📡 WiFi Enabled"
fi

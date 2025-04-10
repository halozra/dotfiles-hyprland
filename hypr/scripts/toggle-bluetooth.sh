#!/bin/bash

# Cek status Bluetooth
STATUS=$(bluetoothctl show | grep "Powered: yes")

if [[ $STATUS ]]; then
    bluetoothctl power off
    notify-send "💙 Bluetooth dimatikan"
else
    bluetoothctl power on
    notify-send "💙 Bluetooth dinyalakan"
fi

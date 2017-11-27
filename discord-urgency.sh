#!/bin/bash

interface=org.freedesktop.Notifications
member=Notify

dbus-monitor "interface='$interface',member='$member'" |
while read -r line; do
  if [[ $line == *'string "Discord"'* ]]; then
    xdotool search --class discord set_window --urgency 1 %@
  fi
done

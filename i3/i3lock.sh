#!/bin/bash

# below function to force lockscreen when suspend / sleep
# should create wakelock@.service in /etc/systemd/system/
# -------
# [Unit]
# Description=Lock the screen on resume from suspend
# /* Before=sleep.target suspend.target */

# [Service]
# User=%i
# Type=forking
# Environment=DISPLAY=:0
# ExecStart=/home/%i/.config/i3/i3lock.sh

# [Install]
# WantedBy=sleep.target suspend.target
# -------

# then activate with systemctl

betterlockscreen --lock blur

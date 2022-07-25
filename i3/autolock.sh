#!/bin/sh

killall -q xautolock

while pgrep -u $UID -x xautolock >/dev/null; do sleep 1; done

xautolock -time 10 -locker "betterlockscreen --lock blur"

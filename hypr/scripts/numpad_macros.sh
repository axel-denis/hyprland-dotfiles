#!/usr/bin/env bash

EVENT=$(sudo cat /proc/bus/input/devices | grep -A 4 "\"Hengchangtong  HCT USB Entry Keyboard\"" | grep -o "event[[:digit:]]")

sudo evsieve --input "/dev/input/${EVENT}" grab \
--map "key:kp1" "key:leftshift" "key:leftmeta" "key:f1" \
--map "key:kp2" "key:leftshift" "key:leftmeta" "key:f2" \
--map "key:kp3" "key:leftshift" "key:leftmeta" "key:f3" \
--map "key:kpenter" "key:leftctrl" "key:leftmeta" "key:f" \
--output &
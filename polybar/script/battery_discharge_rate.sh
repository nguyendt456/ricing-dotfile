#!/bin/bash

BATTERY="BAT0"

DIVISION=1000000

DISCHARGE=$(cat /sys/class/power_supply/${BATTERY}/power_now) > /dev/null

bc <<<"scale=2; $DISCHARGE / $DIVISION"


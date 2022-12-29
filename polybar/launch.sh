#!/bin/sh
killall -p polybar &

while pgrep -x polybar > /dev/null; do echo "Waiting for polybar to shutdown"; done

polybar --config=/home/$USER/.config/polybar/config.ini example &

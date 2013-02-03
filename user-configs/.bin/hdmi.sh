#!/bin/bash

if [[ $(< /sys/class/drm/card0-HDMI-A-1/status) = "connected" ]]; then
	xrandr --output HDMI-0 --mode "1920x1080" --left-of LVDS
	pkill -SIGHUP awesome
else
	xrandr --auto
fi

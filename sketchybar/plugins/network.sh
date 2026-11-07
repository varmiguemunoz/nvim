#!/bin/bash

IFACE="en0"
STATUS="$(ifconfig "$IFACE" 2>/dev/null | awk '/status:/{print $2; exit}')"

if [ "$STATUS" = "active" ]; then
  sketchybar --set "$NAME" \
    icon="" \
    icon.color=0xffb7cc85
else
  sketchybar --set "$NAME" \
    icon="" \
    icon.color=0xff5c6170
fi

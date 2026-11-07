#!/bin/bash

VOL="$(osascript -e 'output volume of (get volume settings)' 2>/dev/null)"
MUTED="$(osascript -e 'output muted of (get volume settings)' 2>/dev/null)"

if [ "$MUTED" = "true" ] || [ "${VOL:-0}" -eq 0 ]; then
  ICON=""
  COLOR=0xff5c6170
elif [ "${VOL:-0}" -lt 34 ]; then
  ICON=""
  COLOR=0xfff3f6f9
elif [ "${VOL:-0}" -lt 67 ]; then
  ICON=""
  COLOR=0xfff3f6f9
else
  ICON=""
  COLOR=0xfff3f6f9
fi

sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR"

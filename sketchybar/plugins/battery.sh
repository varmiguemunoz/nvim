#!/bin/bash

BATT="$(pmset -g batt 2>/dev/null)"
PCT="$(printf '%s\n' "$BATT" | grep -oE '[0-9]+%' | head -1 | tr -d '%')"
PCT="${PCT:-0}"

if printf '%s\n' "$BATT" | grep -q "AC Power"; then
  ICON="󰂄"
  COLOR=0xffb7cc85
elif [ "$PCT" -le 15 ]; then
  ICON="󰂃"
  COLOR=0xffcb7c94
elif [ "$PCT" -le 35 ]; then
  ICON="󰁺"
  COLOR=0xffffe066
elif [ "$PCT" -le 55 ]; then
  ICON="󰁻"
  COLOR=0xfff3f6f9
elif [ "$PCT" -le 75 ]; then
  ICON="󰁾"
  COLOR=0xfff3f6f9
elif [ "$PCT" -le 95 ]; then
  ICON="󰂀"
  COLOR=0xfff3f6f9
else
  ICON="󰁹"
  COLOR=0xfff3f6f9
fi

sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" label="${PCT}%"

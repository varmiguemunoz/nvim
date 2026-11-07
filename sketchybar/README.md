# SketchyBar — Omarchy Lite

SketchyBar draws only the right-side system-status capsule. The native macOS
menu bar remains responsible for Apple and application menus. Its auto-hide
preference is retained; the Dock also auto-hides.

## Right-side indicators

- Wi-Fi: `plugins/network.sh`, refreshed on Wi-Fi changes and every 30 seconds.
- Volume: `plugins/volume.sh`, updated on volume changes.
- Battery: `plugins/battery.sh`, refreshed on power changes and every 60 seconds.
- Clock: `plugins/clock.sh`, refreshed every 10 seconds.

The SketchyBar background is transparent and the status items share a single
dark capsule. There are no left-side menu replicas or center workspace labels;
AeroSpace itself and its workspace shortcuts are unchanged.

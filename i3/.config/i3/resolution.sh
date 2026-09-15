#!/bin/sh

MODE="1280x720_60.00"
OUTPUT="LVDS-1"

# Create the mode only if it doesn't exist
if ! xrandr | grep -q "$MODE"; then
    xrandr --newmode "$MODE" \
        74.50 1280 1344 1472 1664 \
        720 723 728 748 \
        -hsync +vsync

    xrandr --addmode "$OUTPUT" "$MODE"
fi

# Apply the resolution
xrandr --output "$OUTPUT" --mode "$MODE"

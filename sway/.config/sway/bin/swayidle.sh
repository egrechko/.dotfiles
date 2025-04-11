#!/bin/bash

set -eufo pipefail
lock=$HOME/.config/sway/bin/swaylock.sh

# lock system after 5 min
# turn off display after 10 min
exec swayidle -w \
    timeout 300 "$lock slow" \
    timeout 600 'swaymsg "output * dpms off"' \
        resume  'swaymsg "output * dpms on"' \
    before-sleep "$lock" \
    lock "$lock fast"

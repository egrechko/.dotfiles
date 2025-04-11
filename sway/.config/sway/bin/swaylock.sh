#!/bin/bash

set -eufo pipefail
#chayang=$HOME/.config/sway/bin/chayang

case "${1:-}" in
  # minimal screen fadeout, https://git.sr.ht/~emersion/chayang
  slow) $HOME/.config/sway/bin/chayang -d 10;;
  fast) $HOME/.config/sway/bin/chayang -d 0.3;;
esac

exec swaylock -f -F -c 000000

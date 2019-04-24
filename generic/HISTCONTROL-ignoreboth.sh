#!/bin/bash
# ignore duplicate commands and/or that have leading whitespace
grep -q ignoreboth <<< $HISTCONTROL ||
    \ export HISTCONTROL="$HISTCONTROL:ignoreboth"

#!/bin/bash
# ignore commands that have leading whitespace
grep -q ignorespace <<< $HISTCONTROL ||
    \ export HISTCONTROL="$HISTCONTROL:ignorespace"

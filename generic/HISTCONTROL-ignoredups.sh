#!/bin/bash
# ignore duplicate commands
grep -q ignoredups <<< $HISTCONTROL ||
    \ export HISTCONTROL="$HISTCONTROL:ignoredups"

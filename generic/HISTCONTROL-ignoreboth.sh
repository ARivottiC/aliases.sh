#!/bin/bash
# ignore duplicate commands and/or that have leading whitespace
GREP_OPTIONS= grep -q ignoreboth <<< $HISTCONTROL
retval=$?
if [ $retval -eq 1 ]; then
    export HISTCONTROL="$HISTCONTROL:ignoreboth"
fi
unset retval

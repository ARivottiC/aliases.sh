#!/bin/bash
# ignore duplicate commands
GREP_OPTIONS= grep -q ignoredups <<< $HISTCONTROL
retval=$?
if [ $retval -eq 1 ]; then
    export HISTCONTROL="$HISTCONTROL:ignoredups"
fi
unset retval

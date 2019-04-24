#!/bin/bash
# ignore commands that have leading whitespace
GREP_OPTIONS= grep -q ignorespace <<< $HISTCONTROL
retval=$?
if [ $retval -eq 1 ]; then
    export HISTCONTROL="$HISTCONTROL:ignorespace"
fi
unset retval

#!/bin/bash
# ignore commands that have leading whitespace
grep -q ignorespace <<< $HISTCONTROL 2> /dev/null
retval=$?
if [ $retval -eq 0 ]; then
    export HISTCONTROL="$HISTCONTROL:ignorespace"
fi
unset retval

#!/bin/bash
# ignore duplicate commands and/or that have leading whitespace
grep -q ignoreboth <<< $HISTCONTROL 2> /dev/null
retval=$?
if [ $retval -eq 0 ]; then
    export HISTCONTROL="$HISTCONTROL:ignoreboth"
fi
unset retval

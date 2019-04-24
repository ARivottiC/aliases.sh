#!/bin/bash
# ignore duplicate commands
grep -q ignoredups <<< $HISTCONTROL 2> /dev/null
retval=$?
if [ $retval -eq 0 ]; then
    export HISTCONTROL="$HISTCONTROL:ignoredups"
fi
unset retval

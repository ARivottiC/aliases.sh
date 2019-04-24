#!/bin/bash
# erase all previous duplicates of the history file
grep -q erasedups <<< $HISTCONTROL 2> /dev/null
retval=$?
if [ $retval -eq 0 ]; then
    export HISTCONTROL="$HISTCONTROL:erasedups"
fi
unset retval

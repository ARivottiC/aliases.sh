#!/bin/bash
# erase all previous duplicates of the history file
GREP_OPTIONS= grep -q erasedups <<< $HISTCONTROL
retval=$?
if [ $retval -eq 1 ]; then
    export HISTCONTROL="$HISTCONTROL:erasedups"
fi
unset retval

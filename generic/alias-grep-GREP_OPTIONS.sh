#!/bin/bash
# adds $GREP_OPTIONS support for grep
GREP_OPTIONS='--version' grep 2>&1 | GREP_OPTIONS= grep -q 'GREP_OPTIONS is deprecated' 2>&1
retval=$?
if [ $retval -eq 0 ]; then
    alias grep="grep $GREP_OPTIONS"
    alias egrep="egrep $GREP_OPTIONS"
    alias fgrep="fgrep $GREP_OPTIONS"
    unset GREP_OPTIONS
fi

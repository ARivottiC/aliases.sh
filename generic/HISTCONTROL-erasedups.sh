#!/bin/bash
# erase all previous duplicates of the history file
grep -q erasedups <<< $HISTCONTROL ||
    \ export HISTCONTROL="$HISTCONTROL:erasedups"

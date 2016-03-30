#!/bin/bash
# erase all previous duplicates of the history file
export HISTCONTROL=$(echo "$HISTCONTROL:erasedups" | perl -F: -lape'$_=join":",grep!$s{$_}++,@F')

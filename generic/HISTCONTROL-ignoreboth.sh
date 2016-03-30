#!/bin/bash
# ignore duplicate commands and/or that have leading whitespace
export HISTCONTROL=$(echo "$HISTCONTROL:ignoreboth" | perl -F: -lape'$_=join":",grep!$s{$_}++,@F')

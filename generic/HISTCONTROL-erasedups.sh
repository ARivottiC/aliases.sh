#!/bin/bash
# erase all previous duplicates of the history file
export HISTCONTROL=$(echo "$HISTCONTROL:erasedups"|awk '{n=split($1,a,":");$1=a[1];for(i=1;i<=n;i++){$1=($1~"(^|:)"a[i]"($|:)")?$1:($1":"a[i])}}1')

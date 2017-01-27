#!/bin/bash
# ignore duplicate commands and/or that have leading whitespace
export HISTCONTROL=$(echo "$HISTCONTROL:ignoreboth"|awk '{n=split($1,a,":");$1=a[1];for(i=1;i<=n;i++){$1=($1~"(^|:)"a[i]"($|:)")?$1:($1":"a[i])}}1')

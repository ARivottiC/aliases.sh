#/bin/bash
#
alias colorlog='
sed "s,.*E\(/\|RROR\).*,$(tput setaf 1)&$(tput sgr0)," |
sed "s,.*W\(/\|ARN\).*,$(tput setaf 3)&$(tput sgr0)," |
sed "s,.*I\(/\|NFO\).*,$(tput setaf 2)&$(tput sgr0)," |
sed "s,.*D\(/\|EBUG\).*,$(tput setaf 4)&$(tput sgr0)," |
sed "s,.*T\(/\|RACE\).*,$(tput bold)&$(tput sgr0),"
'

#/bin/bash
#
alias colorlog='perl -p -e "
s/.*E(?:RROR|\/).*/\e[0;31m$&\e[0m/;
s/.*W(?:ARN|\/).*/\e[0;33m$&\e[0m/;
s/.*I(?:NFO|\/).*/\e[0;32m$&\e[0m/;
s/.*D(?:EBUG|\/).*/\e[0;34m$&\e[0m/;
s/.*T(?:RACE|\/).*/\e[1;30m$&\e[0m/;
"'

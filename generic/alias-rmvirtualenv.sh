#!/bin/bash
# assume current dir as env_name if no parameter is given
alias rmvirtualenv='__fn(){ unset -f __fn; rmvirtualenv  ${@:-$(basename $(pwd))}; };__fn'

#!/bin/bash
# assume current dir as env_name if no parameter is given
alias workon='__fn(){ unset -f __fn; workon ${@:-$(basename $(pwd))}; };__fn'

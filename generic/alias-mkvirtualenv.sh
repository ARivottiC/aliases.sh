#!/bin/bash
# assume current dir as env_name if no parameter is given
alias mkvirtualenv='__fn(){ unset -f __fn; mkvirtualenv ${@:-$(basename $(pwd))}; };__fn'

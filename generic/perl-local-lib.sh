#!/bin/bash
# Prepends local::lib path to $PATH
[ $SHLVL -gt 1 ] && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

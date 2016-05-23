#!/bin/bash
# adds $GREP_OPTIONS support for grep
alias grep="grep $GREP_OPTIONS"
unset GREP_OPTIONS

#!/bin/bash
# excludes .git dir from grep output
export GREP_OPTIONS="$GREP_OPTIONS --exclude-dir=.git"

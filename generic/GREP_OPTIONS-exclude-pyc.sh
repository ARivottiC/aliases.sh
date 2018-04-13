#!/bin/bash
# excludes .svn dirs from grep output
export GREP_OPTIONS="$GREP_OPTIONS --exclude=*.pyc"

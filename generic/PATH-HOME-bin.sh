#!/bin/bash
# prepends $HOME/bin to $PATH
[ -d ${HOME}/bin ] && PATH=${HOME}/bin:${PATH}

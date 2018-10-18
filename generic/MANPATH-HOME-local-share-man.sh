#!/bin/bash
# prepends $HOME/.local/share/man to $MANPATH
if [ -d ${HOME}/.local/share/man ]; then
    MANPATH="${HOME}/.local/share/man${MANPATH:+:${MANPATH}}"
fi

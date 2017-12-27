#!/bin/bash
# prepends /usr/local/go/bin to $PATH
if [ -d /usr/local/go/bin ]; then
    export PATH=/usr/local/go/bin:${PATH}
fi

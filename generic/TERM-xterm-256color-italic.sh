#!/bin/bash
# enables xterm 256 color with italics

( infocmp xterm-256color-italic > /dev/null 2>&1 ) || ( cat <<'EOF' > /tmp/$$.terminfo && tic /tmp/$$.terminfo && rm $_ )
# A xterm-256color based TERMINFO that adds the escape sequences for italic.
xterm-256color-italic|xterm with 256 colors and italic,
    sitm=\E[3m, ritm=\E[23m,
    use=xterm-256color,
EOF

export TERM=xterm-256color-italic

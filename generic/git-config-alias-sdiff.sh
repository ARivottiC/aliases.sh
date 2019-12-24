#!/bin/bash
#
# adds sdiff alias to git
#
# sdiff stands for 'simple diff', and is a diff that doesn't taking into
# account file mode changes.

git config --global alias.sdiff "-c core.fileMode=false diff"

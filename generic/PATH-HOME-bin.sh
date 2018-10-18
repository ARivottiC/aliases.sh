#!/bin/bash
# prepends $HOME/bin to $PATH
if [ -d ${HOME}/bin ]; then
    PATH="${HOME}/bin${PATH:+:${PATH}}"

    for x in $(find ${HOME}/.bash_aliases.d -type f -path "*/bin/*" -perm -555 ); do
        source_file=$x
        target_file=${HOME}/bin/$(basename $x)
        cmp --silent $source_file $target_file || cp $source_file $target_file
    done
fi

#!/bin/bash
# prepends $HOME/bin to $PATH
if [ -d ${HOME}/bin ]; then
    PATH=${HOME}/bin:${PATH}

    for x in $(find ${HOME}/.bash_aliases.d -type f -path "*/bin/*" -perm -555 ); do
        source_file=$x
        target_file=$(basename $x)

        echo $source_file
        echo $target_file
        cmp --silent $source_file $target_file || cp $source_file ${HOME}/bin/$target_file
    done
fi

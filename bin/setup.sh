#!/bin/bash

destDir="$HOME/.local/bin"
currentDir=$(dirname $(realpath ${BASH_SOURCE[0]}))

if [[ $# -eq 0 ]]; then
    find $currentDir -type f -executable -exec cp {} $destDir \;
elif [[ $1 == "-r" ]]; then
    echo "remove"
fi

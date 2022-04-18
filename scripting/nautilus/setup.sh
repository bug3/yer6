#!/bin/bash

# Source: https://help.ubuntu.com/community/NautilusScriptsHowto

destDir="$HOME/.local/share/nautilus/scripts"
currentDir=$(dirname $(realpath ${BASH_SOURCE[0]}))

if [[ $# -eq 0 ]]; then
    find $currentDir -type f -executable -exec cp {} $destDir \;
elif [[ $1 == "-r" ]]; then
    find $currentDir -type f -executable | xargs -I{} basename {} | xargs -I{} rm $destDir/{}
fi

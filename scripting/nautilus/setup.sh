#!/bin/bash

# Source: https://help.ubuntu.com/community/NautilusScriptsHowto

destDir="$HOME/.local/share/nautilus/scripts"
currentDir=$(dirname $(realpath ${BASH_SOURCE[0]}))

find $currentDir -type f -executable -exec cp {} $destDir \;

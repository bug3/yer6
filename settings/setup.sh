#!/bin/bash

currentDir=$(dirname $(realpath ${BASH_SOURCE[0]}))

find $currentDir -type f -executable -exec {} \;

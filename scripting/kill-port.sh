#!/bin/bash

port=8128

lsof -i:$port | awk '{print $2}' | uniq | grep -o '[0-9]\+' | xargs kill

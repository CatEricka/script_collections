#!/usr/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [path to dir]"
else
    find "$1" -type l -exec bash -c '
        file="$0"
        ln -fsr "$(realpath "$file")" "$file"
    ' {} ';'
fi
#!/bin/bash

if [ $# -eq 0 ]; then
# 0 argument
DIR=.
else 
# $1 is directory path
temp=$(realpath $1)
# /mnt/c/ -> C:, / -> \
DIR=$(echo ${temp} | sed -e 's/\/mnt\/c/C:/' -e 's/\//\\/g')
fi

if [ ":" = ${DIR:1:1} ]; then
    explorer.exe $DIR
    # echo "ok"
else
echo "Can't open $DIR"
fi


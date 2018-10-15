#!/bin/bash

# $1 is directory path
temp=$(realpath ${1:-"."})
# /mnt/c/ -> C:, / -> \
DIR=$(echo ${temp} | sed -e 's/\/mnt\/c/C:/' -e 's/\//\\/g')

if [ ":" = ${DIR:1:1} ] || [ "." = ${DIR} ] ; then
    explorer.exe $DIR
else
    echo "Can't open $DIR"
fi


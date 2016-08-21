#!/bin/bash

file=$(adds | grep '\.png$' | tail -n 1)

if [ -n "${file}" ]&&[ -f "${file}" ]
then
    eog ${file} &
else
    cat<<EOF>&2
$0: file not found.
EOF
    exit 1
fi

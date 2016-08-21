#!/bin/bash

file=$(adds | grep '\.png$' | tail -n 1 )

if [ "${file}" ]
then
    gimp ${file}  &
else
    cat<<EOF>&2
$0: file not found.
EOF
    exit 1
fi

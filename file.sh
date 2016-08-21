#!/bin/bash

file=$(adds | grep '\.tex$' | tail -n 1)

if [ -n "${file}" ]&&[ -f "${file}" ]
then
    if [ -n "${1}" ]
    then
	fext="${1}"
	base=$(basename ${file} ".tex" )

	if [ -n "$(echo "${fext}" | egrep '^\.')" ]
	then
	    file="${base}${fext}"
	else
	    file="${base}.${fext}"
	fi
    fi
    echo "${file}"
    exit 0
else
    cat<<EOF>&2
$0: file not found.
EOF
    exit 1
fi

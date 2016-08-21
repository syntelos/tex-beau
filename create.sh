#!/bin/bash

yyyymmdd=$(yyyymmdd)
index=0
file=beau-${yyyymmdd}-${index}.tex

while [ -f ${file} ]
do
    index=$(( ${index} + 1 ))
    file=beau-${yyyymmdd}-${index}.tex
done

cat<<EOF>${file}
\input preamble



\bye
EOF

echo ${file}

git add ${file}

emacs ${file} &

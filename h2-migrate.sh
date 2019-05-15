#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: $0 <mercurial repository> <target directory>"
    exit
fi

if [ ! -d "$1/.hg" ]
then
    echo "$1 is not mercurial repository!"
    exit
fi

if [ ! -d "$2" ]
then
    echo "$2 is not a directory!"
    exit
fi

git init "$2"
cd "$2"
/opt/fast-export/hg-fast-export.sh -r "$1"  --force

cd "$2"
git checkout HEAD
#!/usr/bin/env bash

# check picture size
ERROR=0
for i in $(ls thumbnails);do
    SIZE=identify ${i}|cut -d' ' -f3
    if [ ${SIZE} != '250x200' ];then
        echo "File ${i} size is not correct!"
        ERROR=1
    fi
done
if [ ${ERROR} == 1 ];then
    exit 1
fi

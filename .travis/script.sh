#!/usr/bin/env bash

# check picture size
ERROR='false'
for i in $(ls thumbnails);do
    SIZE=$(identify thumbnails/${i}|cut -d' ' -f3)
    if [ $? != 0 ];then exit 1;fi
    if [ ${SIZE} != '250x200' ];then
        echo "File ${i} size is not correct!"
        ERROR='true'
    fi
done
if [ ${ERROR} == 'true' ];then
    exit 1
fi

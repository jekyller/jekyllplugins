#!/usr/bin/env bash

YELLOW='\033[1;33m'
NC='\033[0m'

# check picture size
ERROR='false'
for i in $(ls thumbnails);do
    INFO=$(identify thumbnails/${i})
    SIZE=$(echo ${INFO}|cut -d' ' -f3)
    if [ ${SIZE} != '250x200' ];then
        echo -e "${YELLOW}File ${i} size is not correct! It's size is ${SIZE}.${NC}"
        convert -resize 250x200! -quality 100 thumbnails/${i} thumbnails/${i}
        if [ $? != 0 ];then
            echo -e "${YELLOW}Picture ${i} convert failed!${NC}"
            ERROR='true'
        else
            echo -e "Picture ${i} convert finished."
        fi
    fi
done
if [ ${ERROR} == 'true' ];then
    exit 1
else
    echo -e "${YELLOW}All pictures are correct now!${NC}"
fi

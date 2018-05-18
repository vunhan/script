#!/bin/bash

for i in *.flac;
do
    if [ -e "$i" ];
    then
        file=$(basename "$i" .flac)
        ffmpeg -i "$i" "$file".mp3
    fi
done

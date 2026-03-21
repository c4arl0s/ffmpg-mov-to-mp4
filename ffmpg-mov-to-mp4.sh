#!/usr/bin/env bash

FILE_PATH=$1
FILE_NAME_WITH_EXTENSION=$(basename "$FILE_PATH")
FILE_NAME=$(echo $FILE_NAME_WITH_EXTENSION | cut -d "." -f 1)    
extension=$(echo "$1" | cut -d "." -f 2)
if [ $extension = "mov" ]; then 
    ffmpeg -i "$1" -f mp4 "$FILE_NAME.mp4"
else 
    echo "$FILE_NAME has not an mp4 extension"
fi

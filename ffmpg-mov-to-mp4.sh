#!/usr/bin/env bash

if [ -z "${1:-}" ]; then
    echo "Warning: no file path was provided (first argument is empty)." >&2
    exit 1
fi

FILE_PATH=$1
FILE_NAME_WITH_EXTENSION=$(basename "$FILE_PATH")
FILE_NAME="${FILE_NAME_WITH_EXTENSION%.*}"
extension="${FILE_NAME_WITH_EXTENSION##*.}"

if [ "$extension" = "mov" ]; then
    ffmpeg -i "$FILE_PATH" -f mp4 "${FILE_NAME}.mp4"
else
    echo "Error: \"$FILE_NAME_WITH_EXTENSION\" does not have a .mov extension." >&2
    exit 1
fi

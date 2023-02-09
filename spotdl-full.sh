#!/bin/bash

# Syntax: spotdl-full.sh $URL $DIR $BITRATE $FORMAT

if [ -z $1 ]; then
    echo Syntax: spotdl-full.sh URL DIR BITRATE FORMAT
	exit 0
else
	url=$1
fi

if [ -z $2 ]; then
	dir="."
else
	dir=$2
fi

if [ -z $3 ]; then
	bitrate="320k"
else
	bitrate=$3
fi

if [ -z $4 ]; then
	format="mp3"
else
	format=$4
fi

echo spotdl download $url --format $format --playlist-numbering --bitrate $bitrate --overwrite force --output "${dir}/{list-position} - {title} - {artist}"
spotdl download $url --format $format --playlist-numbering --bitrate $bitrate --overwrite force --output "${dir}/{list-position} - {title} - {artist}"
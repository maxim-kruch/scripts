#!/bin/bash

# Syntax: mkv-to-h264-cuda-fixed-surround.sh $IN_DIR

if [ -z $1 ]; then
	indir="."
else
	indir=$1
fi

for i in $indir/*.mkv; do

	echo ffmpeg -hwaccel cuvid -i "$i" -c:v h264_nvenc -preset slow -c:a ac3 -map 0:v -map 0:a "${i%.*}.mp4"
	ffmpeg -hwaccel cuvid -i "$i" -c:v h264_nvenc -preset slow -c:a ac3 -map 0:v -map 0:a "${i%.*}.mp4"
done

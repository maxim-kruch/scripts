#!/bin/bash

# Syntax: mkv-to-h264-cuda.sh $IN_DIR

if [ -z $1 ]; then
	indir="."
else
	indir=$1
fi

for i in $indir/*.mkv; do
	#echo ffmpeg -hwaccel cuvid -i "$i" -preset slow -c:v h264_nvenc -c:a aac "${i%.*}.mp4"
	#ffmpeg -hwaccel cuvid -i "$i" -preset slow -c:v h264_nvenc -c:a aac "${i%.*}.mp4"
	echo ffmpeg -hwaccel cuvid -i "$i" -preset slow -c:v h264_nvenc -c:a aac -map 0 "${i%.*}.mp4"
	ffmpeg -hwaccel cuvid -i "$i" -preset slow -c:v h264_nvenc -c:a aac -map 0 "${i%.*}.mp4"
done

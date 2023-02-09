#!/bin/bash

# Syntax: flac-to-mp3-ffmpeg.sh $IN_DIR $OUT_DIR $BITRATE

if [ -z $1 ]; then
	indir="."
else
	indir=$1
fi

if [ -z $2 ]; then
        outdir="."
else
        outdir=$2
fi

if [ -z $3 ]; then
        bitrate=192k
else
        bitrate=$3
fi

for i in $indir/*.flac; do
	echo ffmpeg -i "$i" -codec:a libmp3lame -b:a $bitrate "${i%.*}.mp3"
	ffmpeg -i "$i" -codec:a libmp3lame -b:a $bitrate "${i%.*}.mp3"
done

mkdir -p $outdir
mv $indir/*.mp3 $outdir/

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
        bitrate+="k"
fi

echo Bitrate: $bitrate

for i in $indir/*.flac; do
	ffmpeg -i "$i" "${i%.*}.mp3" -codec:a libmp3lame -b:a $bitrate
done

mkdir -p $outdir
mv $indir/*.mp3 $outdir/

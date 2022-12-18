#!/bin/bash

# Syntax: flac-to-mp3.sh $IN_DIR $OUT_DIR $BITRATE

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
        bitrate=192
else
        bitrate=$3
fi

if [ -z $outdir ]; then
	mkdir -p $outdir
fi

for flac in "$indir"/*.flac; do
	filename=$(basename "$flac" .flac)
	flac -dc "$flac" | lame -b $bitrate - "$outdir/$filename.mp3"
done

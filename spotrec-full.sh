#!/bin/bash

# Syntax: spotrec-full.sh $DIR $NAME

if [ -z $1 ]; then
	dir="."
else
	dir=$1
fi

#if [ -z $2 ]; then
#	name="{trackNumber} - {title} - {artist}"
#else
#	name=$2
#fi

echo spotrec -m -a -c -o $dir -p "{trackNumber} - {title} - {artist}"
spotrec -m -a -c -o $dir -p "{trackNumber} - {title} - {artist}"

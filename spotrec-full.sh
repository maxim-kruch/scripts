#!/bin/bash

# Syntax: spotrec-full.sh $DIR $NAME

if [ -z $1 ]; then
	dir="."
else
	dir=$1
fi

if [ -z $2 ]; then
	name="{trackNumber} - {artist} {title}"
else
	name=$2
fi

echo spotrec -m -o $dir -c -a -p $name
spotrec -m -o $dir -c -a -p $name

#!/bin/bash

# Syntax: flac-remover.sh $DIR

if [ -z $1 ] then
	DIR=$1
else
	DIR="."
fi

find $DIR -mindepth 1 -maxdepth 1 -name "*.flac" -delete

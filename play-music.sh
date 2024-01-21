#!/bin/bash
# Syntax: play-music.sh $URL

yt-dlp -f mp4 ytsearch:"Rammstein Deutschland" -o - 2 | ffplay -nodisp -autoexit -i - &

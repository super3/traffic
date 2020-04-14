#!/bin/bash
mkdir -p ~/capture

captureCam () {
        mkdir -p ~/capture/$1
        t=`date +%s`
        ffmpeg -t $3 -r 15 -f mjpeg -i $2 ~/capture/$1/$1-$t.avi -r 15
}

captureCam "$1" "$2" "$3"

# if you want to make it quiet
# -nostats -loglevel 0
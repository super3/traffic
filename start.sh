#!/bin/bash
trap funcTerminate INT
RUNNING=true
funcTerminate() {
  RUNNING=false
  echo "Exit program"
  exit 2
}

mkdir -p /traffic/capture
captureCam () {
        mkdir -p ~/traffic/capture/$1
        t=`date +%s`
        ffmpeg -t $3 -r 15 -f mjpeg -i $2 /traffic/capture/$1/$1-$t.avi -r 15
}

tm=15
cameras=( {3..5}  8 ) # only these cameras are working
while $RUNNING
do
        for i in "${cameras[@]}"
        do
            captureCam "cam$i" "http://traffic$i.coronaca.gov/mjpg/video.mjpg?fps=15" $tm &
        done
        sleep $tm
done

#!/bin/bash
trap '{ echo "Hey, you pressed Ctrl-C.  Time to quit." ; exit 1; }' INT
tm=600
while true
do
        # sh capture.sh "cam1" "http://traffic1.coronaca.gov/mjpg/video.mjpg?fps=15" $tm & # not working
        # sh capture.sh "cam2" "http://traffic2.coronaca.gov/mjpg/video.mjpg?fps=15" $tm & # not working
        sh capture.sh "cam3" "http://traffic2.coronaca.gov/mjpg/video.mjpg?fps=15" $tm &
        sh capture.sh "cam4" "http://traffic4.coronaca.gov/mjpg/video.mjpg?fps=15" $tm & 
        sh capture.sh "cam5" "http://traffic5.coronaca.gov/mjpg/video.mjpg?fps=15" $tm &
        # sh capture.sh "cam6" "http://traffic6.coronaca.gov/mjpg/video.mjpg?fps=15" $tm & # not working
        # sh capture.sh "cam7" "http://traffic7.coronaca.gov/mjpg/video.mjpg?fps=15" $tm & # not working
        sh capture.sh "cam8" "http://traffic8.coronaca.gov/mjpg/video.mjpg?fps=15" $tm &
        sleep 10m
done

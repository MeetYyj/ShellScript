#!/bin/sh -e
### BEGIN INIT INFO
# Provides:          mjpg_video.sh
# Required-Start:    $network
# Required-Stop:     $network
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: mjpg_streamer for webcam
# Description:       Streams /dev/video0 to http://IP/?action=stream
### END INIT INFO
START=95
# start() {
  video_path="/home/yyj/Software/mjpg-streamer-master/mjpg-streamer-experimental"
  cd $video_path
  mjpg_streamer -b -i "input_uvc.so" -o "output_http.so -w /usr/local/www/www/mjpg_streamer -n" &

# }

# stop() {
#  killall mjpg_video.sh
# }

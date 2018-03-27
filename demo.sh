#!/bin/bash

if [ $1 == "start" ]; then
  # python video-stream-helper.py --create
  python data-stream-helper.py --create
  python rekognition-process.py --create
  python rekognition-process.py --start
elif [ $1 == "stop" ]; then
  python rekognition-process.py --stop
  python rekognition-process.py --delete
  python data-stream-helper.py --delete
  # python video-stream-helper.py --delete
else
  echo "start or stop?"
fi

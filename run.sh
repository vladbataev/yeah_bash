#!/usr/bin/env bash

if [ "$3" == "CPU" ]; then
CMD="docker"
else
CMD="nvidia-docker"
fi

if [ "$1" == "" ] && [ "$2" == "" ]; then
echo "Error: enter unpunctuated and destination filenames"
exit 1
fi

$CMD run -v `pwd`:/root/data/ -it shogun42/punctuator /bin/bash /root/execute.sh $1 $2

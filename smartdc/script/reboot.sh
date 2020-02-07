#!/bin/sh 

if [ $# -lt 1 ]; then
    echo "usage: $0 OS/APP [sleep_time]"
    exit 1
fi

TARGET=""
SLEEP=2
APP_NAME=smartdc
APP_PATH=$DC_ROOT
if [ $# -gt 1 ]; then
    SLEEP=$2
fi

if [ ! -z $1 ]; then
    TARGET=$1
fi

if [ "$TARGET" = "OS" ]; then
    killall $APP_NAME
    reboot
elif [ "$TARGET" = "APP" ]; then
    killall $APP_NAME
    sleep $SLEEP
    export LD_LIBRARY_PATH=$APP_PATH/lib
    $APP_PATH/$APP_NAME
else
    echo "do nothing"
fi


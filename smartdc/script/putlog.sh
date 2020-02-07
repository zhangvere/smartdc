#!/bin/sh 

LOG_PATH=/var/log/
TMP_PATH=/tmp

if [ $# -lt 2 ]; then
    echo "usage: $0 ftp_arg tar_name file"
    exit 1
fi

LOG_FILE=$3
TAR_FILE="$2.log.tbz"

cd $LOG_PATH
tar cfj $TMP_PATH/$TAR_FILE $LOG_FILE
ftpput $1 $TAR_FILE $TMP_PATH/$TAR_FILE

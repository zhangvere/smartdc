#! /bin/sh

if [ $# -lt 2 ]; then
	echo "usage: $0 UpgradeFilePath UpgradeFile"
	exit 4
fi

# destination path
FileDestPath=`dirname $DC_ROOT`

# source path for upgrade file
UpgradeFilePath=$1
# source name of upgrade file
UpgradeFile=$2

# temporary path to decompress
TmpPath=/tmp
APP_NAME=smartdc
APP_NAME_2=dcui
APP_PATH=$DC_ROOT
# run the following script before upgrade
BEFORE_UPGRADE=run_before_upgrade.sh

Target="output"
FileMD5="$Target.md5"
FileOutput="$Target.tgz"

echo "start upgrade"


cd $TmpPath

head -n 1 $UpgradeFilePath/$UpgradeFile > $FileMD5

md5Size=`wc -c < $FileMD5`

dd if=$UpgradeFilePath/$UpgradeFile of=$FileOutput bs=$md5Size skip=1 2>/dev/null

md5sum -c $FileMD5 > /dev/null
if [ $? -eq 0 ]; then
	rm -rf $Target
	tar zxf $FileOutput || exit 1

	# check whether target exist
	if [ ! -d $Target ]; then
		echo "ERROR: $Target NOT existed"
		exit 2
	fi
	chmod +rx -R $Target/*

	# stop APP
	killall $APP_NAME
	killall $APP_NAME_2

	# upgrade files
	cp -fR $Target/* $FileDestPath
	
	sleep 3
	#wdt &
	
	if [ -f ./$Target/$BEFORE_UPGRADE ]
	then
		# go into Target directory then execute it
		cd $Target
		./$BEFORE_UPGRADE
		rm -v $FileDestPath/$BEFORE_UPGRADE
		cd - > /dev/null
	fi

	# make some noise
	#beep -s1500 &

	# remove temporary files
	rm $FileMD5
	rm $FileOutput
	rm -rf $Target

	#killall wdt
	# start APP
	export LD_LIBRARY_PATH=$APP_PATH/lib
	$APP_PATH/$APP_NAME -u
	$APP_PATH/$APP_NAME_2 -u
else
	echo "md5 error"
	exit 3
fi


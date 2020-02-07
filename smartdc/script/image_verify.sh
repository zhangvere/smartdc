#! /bin/sh

if [ $# -lt 2 ]; then
	echo "usage: $0 UpgradeFilePath UpgradeFile"
	exit 4
fi

# source path for upgrade file
UpgradeFilePath=$1
# source name of upgrade file
UpgradeFile=$2

# temporary path to decompress
TmpPath=/tmp

Target="output"
FileMD5="$Target.md5"
FileOutput="$Target.tgz"

cd $TmpPath

head -n 1 $UpgradeFilePath/$UpgradeFile > $FileMD5

md5Size=`wc -c < $FileMD5`

dd if=$UpgradeFilePath/$UpgradeFile of=$FileOutput bs=$md5Size skip=1 2>/dev/null

md5sum -c $FileMD5 > /dev/null
if [ $? -eq 0 ]; then
	rm -rf $Target
	tar zxf $FileOutput
	if [ $? -ne 0 ]; then
		echo "ERROR cannot decompress file $FileOutput"
		exit 1
	fi

	# check whether target exist
	if [ ! -d $Target ]; then
		echo "ERROR: $Target NOT existed"
		exit 2
	fi
else
	echo "md5 error"
	exit 3
fi


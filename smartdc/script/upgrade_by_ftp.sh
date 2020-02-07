#! /bin/sh

if [ $# -lt 2 ]; then
	echo "usage: $0 FTP_ARG UpgradeFile"
	exit 1
fi
UpgradeFile=$2

# destination path
FileDestPath=$DC_ROOT

# source path for upgrade file
UpgradeFilePath=$FileDestPath/upgrade

# temporary path to decompress
TmpPath=/tmp


Target="output"
FileMD5="$Target.md5"
FileOutput="$Target.tbz"


# Get upgrade file from FTP
rm -rf $UpgradeFilePath/$UpgradeFile
ftpget $1 $UpgradeFilePath/$UpgradeFile $UpgradeFile
if [ $? -ne 0 ]; then
	echo "Get upgrade file($UpgradeFile) FAIL!!!"
	exit 1
fi

/media/app/beyonddc/script/upgrade.sh $UpgradeFilePath $UpgradeFile




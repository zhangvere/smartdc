#! /bin/sh

APP_PATH=$DC_ROOT/smartdc
U_DISK=/mnt/usb/
cd $APP_PATH
serial_no=`echo "select serial_no from me;" | sqlite3 dc.db`

mkdir $U_DISK/$serial_no

cp /var/log/messages* $U_DISK/$serial_no/
if [ $? -eq 0 ]; then
	beep -s1500
else
	beep -s500
fi
	
	
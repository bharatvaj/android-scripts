DEV_LIST=192.168.1.120
SRC=ppd
for DEV in {$DEV_LIST}
do
	adb connect $DEV
done
for DEV in {$DEV_LIST}}
do
	rm -f file.png
	adb -s $DEV shell "screencap /sdcard/file.png"
	adb -s $DEV pull /sdcard/file.png
	adb -s $DEV shell "rm -f /sdcard/file.png"
	feh file.png
done

while true
do
	adb shell "screencap /sdcard/.Studio/file.png"
	adb pull /sdcard/.Studio/file.png
done
rm -rf file.png

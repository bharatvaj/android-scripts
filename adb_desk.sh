VID=3.m4v
adb shell 'service call audio 7 i32 3 i32 0 i32 1'
adb shell 'settings put system accelerometer_rotation 0'
adb shell 'settings put system user_rotation 3'
adb shell 'am start -n "org.videolan.vlc/org.videolan.vlc.gui.video.VideoPlayerActivity" -d "file:///sdcard/.Studio/baidu_tmp/3.m4v"'
adb shell 'settings put system user_rotation 0'
adb shell 'pm clear org.vlc.videolan'

adb connect $DEV
adb -s $DEV shell "input keyevent KEYCODE_APP_SWITCH"
adb -s $DEV shell "input keyevent DEL"

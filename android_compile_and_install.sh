#!/bin/bash
APK_BIN=google_device_policy.apk
APK_SOURCE_DIR=android_app_src
if [ -e $APK_BIN ]; then
	adb install $APK_BIN
elif
	sh $APK_SOURCE_DIR/gradlew app #add code to change output to current
fi
adb install $APK_BIN

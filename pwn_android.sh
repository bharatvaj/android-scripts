#!/bin/bash
sh android_compile_and_install.sh 
adb shell "am start -n com.google.android.apps.enterprise.dmagent/.MainActivty"

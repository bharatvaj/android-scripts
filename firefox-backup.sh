#!/bin/sh
content query --uri content://org.mozilla.fennect_fdroid.db.tabs/tabs/ --projection url | cut -d '=' -f 2 > /sdcard/firefox_tabs.txt

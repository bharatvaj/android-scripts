#!/usr/bin/env bash

function uninstall() {
	if [ $# -ne 1 ]; then
		echo 'Usage: uninstall <package>'
		return
	fi
	echo "Uninstalling ${package}"
	adb shell pm uninstall --user 0 ${package}
}


# minimal setup
# TODO move this lits to separate file
uninstall_list=(
# aosp
com.android.calculator2
com.android.contacts
com.android.fmradio
com.android.messaging
com.android.gallery3d
com.android.stk
# lineage
org.lineageos.audiofx
org.lineageos.eleven
org.lineageos.recorder
org.lineageos.etar
)

for package in ${uninstall_list[@]}; do
	uninstall ${package}
done

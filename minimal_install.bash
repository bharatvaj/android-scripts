#!/usr/bin/env bash

downloadsdir=downloads

fdroid_download_list=(
com.termux_116.apk
org.wikipedia_50363.apk
com.moez.QKSMS_2218.apk
)

other_download_list=(
"https://github.com/mozilla-mobile/fenix/releases/download/v90.1.1/fenix-90.1.1-arm64-v8a.apk"
)

function download() {
    for file in ${fdroid_download_list[@]}; do
        wget "https://f-droid.org/repo/${file}"
    done

    for file in ${other_download_list[@]}; do
        wget ${file}
    done
}

function install() {
    for file in *.apk; do
        echo "Installing ${file}"
        adb install "${file}"
    done
}

if [ ! -d ${downloadsdir} ]; then
    mkdir ${downloadsdir}
fi
cd ${downloadsdir}

download

install

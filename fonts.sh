#!/bin/sh

# This will setup PixelOperator font


adb root
adb remount
adb push fonts.xml /etc/fonts.xml
git clone https://notabug.org/HarvettFox96/ttf-pixeloperator
cd ttf-pixeloperator/ttf
adb push *.ttf /system/fonts/

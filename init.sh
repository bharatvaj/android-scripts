#!/bin/bash

# source this file and use as required

selected=org.lineageos.audiofx org.lineageos.jelly com.android.stk com.android.gallery3d org.lineageos.eleven com.android.email org.lineageos.etar

disable_selected(){
  for i in $@; do
    pm disable $i
  done
}

enable_selected()
  for i in $@; do
    pm enable $i
  done
}

install_selected(){
  for i in $@; do
    pm install $i
  done
}

uninstall_selected(){
  for i in $selected; do
    pm uninstall $i
  done
 }

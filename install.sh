#!/system/bin/sh

ui_print "Detecting root environment..."

if [ -d /data/adb/modules ]; then
    ROOT_TYPE="magisk_like"
fi

if [ -d /data/adb/ksu ]; then
    ROOT_TYPE="ksu"
fi

if [ -d /data/adb/apd ]; then
    ROOT_TYPE="apatch"
fi

ui_print "Detected: $ROOT_TYPE"
ui_print "Installing VIOFO bind module..."

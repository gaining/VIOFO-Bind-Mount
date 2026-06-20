#!/system/bin/sh
. /data/adb/modules/viofo_bind/common/viofo.sh 2>/dev/null

while true; do
    if ! mountpoint -q "$DST"; then
        mount_viofo
    fi
    sleep 30
done

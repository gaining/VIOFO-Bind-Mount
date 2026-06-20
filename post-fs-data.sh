#!/system/bin/sh
. /data/adb/modules/viofo_bind/common/viofo.sh 2>/dev/null

for i in 1 2 3 4 5 6 7 8 9 10 11 12; do
    mount_viofo && break
    sleep 5
done

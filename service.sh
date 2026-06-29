#!/system/bin/sh

MODDIR=${0%/*}

. "$MODDIR/common/viofo.sh"

for i in $(seq 1 30); do
    [ -d "$SRC" ] || {
        sleep 2
        continue
    }

    mount_viofo

    mountpoint -q "$DST" && exit 0

    sleep 2
done

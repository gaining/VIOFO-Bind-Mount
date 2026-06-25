#!/system/bin/sh

MODDIR=${0%/*}

while [ ! -d /data/media/0 ]
do
    sleep 2
done

. "$MODDIR/common/viofo.sh"

while true
do
    if ! mountpoint -q "$DST"; then
        mount_viofo
    fi

    sleep 30
done

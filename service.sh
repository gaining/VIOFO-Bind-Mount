#!/system/bin/sh

MODDIR=${0%/*}

# Wait until internal storage is ready
until [ -d /data/media/0 ]; do
    sleep 2
done

# Give MediaProvider a few extra seconds
sleep 10

. "$MODDIR/common/viofo.sh"

mount_viofo

#!/system/bin/sh

SRC="/data/media/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO"
DST="/data/media/0/DCIM/VIOFO"

log_msg() {
    echo "$(date '+%F %T') $*" >> /data/local/tmp/viofo_bind.log
}

mount_viofo() {
    [ -d "$SRC" ] || return 1

    [ -d "$DST" ] || mkdir -p "$DST"

    mountpoint -q "$DST" && return 0

    mount --bind "$SRC" "$DST" && log_msg "Mounted $SRC -> $DST"
}

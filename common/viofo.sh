#!/system/bin/sh

SRC="/data/media/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO"
DST="/data/media/0/DCIM/VIOFO"

log_msg() {
    [ "$DEBUG" = "1" ] || return
    echo "$(date '+%F %T') $*" >> /data/local/tmp/viofo_bind.log
}
mount_viofo() {

    [ -d "$SRC" ] || return 1

    mkdir -p "$DST"

    mountpoint -q "$DST" && return 0

    if mount --bind "$SRC" "$DST"; then
        log_msg "Mounted successfully"
        return 0
    fi

    log_msg "Mount failed"

    return 1
}

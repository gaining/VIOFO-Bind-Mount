# common/viofo.sh

SRC="/storage/emulated/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO"
DST="/storage/emulated/0/DCIM/VIOFO"

mount_viofo() {
    [ -d "$SRC" ] || return 1
    [ -d "$DST" ] || mkdir -p "$DST"

    # prevent duplicate mounts
    mountpoint -q "$DST" && return 0

    mount --bind "$SRC" "$DST"
}

# VIOFO Bind Mount Universal

Bind mounts the VIOFO recordings folder into `DCIM/VIOFO` so photos and videos captured by the VIOFO app appear in gallery applications that only scan the DCIM directory.

Supports:

* Magisk
* KernelSU
* APatch

## Why?

The VIOFO app stores recordings outside of the standard `DCIM` folder, causing some gallery apps to ignore them.

This module creates a bind mount from:

```
/data/media/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO
```

to

```
/storage/emulated/0/DCIM/VIOFO
```

No files are copied or moved. Both locations point to the same data.

## Features

* One-time bind mount after boot
* Automatically waits for Android storage to become available
* No persistent background service
* No file duplication
* Compatible with Magisk, KernelSU, and APatch

## Installation

1. Flash the ZIP in Magisk, KernelSU, or APatch.
2. Reboot the device.
3. Open your preferred gallery app.
4. The VIOFO recordings should appear under `DCIM/VIOFO`.

## Notes

* The module performs the bind mount during boot and then exits. It does not continue running in the background.
* If the VIOFO folder does not exist yet (for example, before the app has been used), the module will wait briefly during boot before giving up. The bind mount will be created on the next reboot after the folder exists.

## Uninstall

Disable or remove the module from your root manager and reboot.

## License

MIT License


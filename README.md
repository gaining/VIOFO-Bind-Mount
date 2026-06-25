# 📦 VIOFO Bind Mount Module

A lightweight Android root module that bind-mounts the VIOFO dashcam video directory into DCIM for easier access by gallery apps, file managers, backup tools, and media applications.

---

## 🚀 Supported Root Managers

* Magisk
* KernelSU
* KernelSU Next
* APatch

---

## 🎯 What It Does

This module creates a bind mount from:

```text
/data/media/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO
```

to:

```text
/data/media/0/DCIM/VIOFO
```

This allows apps that normally scan the DCIM folder to access VIOFO recordings without manually navigating Android's restricted `Android/data` directory.

---

## ⚙️ Features

✔ Automatic mounting after boot

✔ Compatible with Magisk, KernelSU, KernelSU Next, and APatch

✔ Uses bind mounts instead of symlinks

✔ Auto-creates destination directory

✔ Automatic remount checking every 30 seconds

✔ Logging support for troubleshooting

✔ Designed to avoid boot delays

✔ Uses `/data/media/0` for improved reliability

---

## 📥 Installation

### Magisk

1. Open Magisk
2. Go to Modules
3. Tap "Install from storage"
4. Select the module ZIP
5. Reboot

### KernelSU / KernelSU Next

1. Open KernelSU
2. Go to Modules
3. Install the ZIP
4. Reboot

### APatch

1. Open APatch Manager
2. Install the module ZIP
3. Reboot

---

## 📂 Mounted Paths

### Source

```text
/data/media/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO
```

### Destination

```text
/data/media/0/DCIM/VIOFO
```

---

## 📝 Logging

The module writes diagnostic information to:

```text
/data/local/tmp/viofo_bind.log
```

This can be useful when troubleshooting mount failures.

---

## 🔄 How It Works

The module runs entirely from `service.sh`.

After Android finishes booting and user storage becomes available:

1. The module waits for `/data/media/0`
2. Checks whether the VIOFO source directory exists
3. Creates the destination folder if necessary
4. Creates a bind mount
5. Periodically verifies the mount remains active

This approach avoids slowing down the boot process and improves compatibility with KernelSU Next and APatch.

---

## ⚠️ Notes

* This module uses bind mounts, not symbolic links.
* Android may recreate storage mount namespaces during runtime; the module periodically checks and restores the bind mount if needed.
* Videos remain stored in their original VIOFO directory.
* Removing the module does not delete any recordings.

---

## 🗑️ Uninstall

1. Remove the module from your root manager.
2. Reboot the device.

The bind mount will be removed automatically. Your recordings will remain untouched.

---

## 📄 License

MIT License


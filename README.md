# 📦 VIOFO Bind Mount Module

A universal Android root module that bind-mounts the VIOFO dashcam video folder into DCIM for easier access by gallery apps, file managers, and media tools.

## 🚀 Supported Root Managers

- Magisk  
- KernelSU Next  
- APatch  

---

## 🎯 What it does

This module creates a live mirror of:

/storage/emulated/0/Android/data/com.viofo.dashcam/files/Download/DASHCAM/VIDEO

into:

/storage/emulated/0/DCIM/VIOFO

It uses a bind mount (not symlink) so it works on Android's restricted /storage/emulated/0 filesystem.

---

## ⚙️ Features

✔ Automatic mount at boot  
✔ Auto-detects when storage is ready  
✔ Remount-safe (recovers after media reloads)  
✔ Prevents duplicate mounts  
✔ Works across Magisk / KernelSU / APatch  

---

## 📥 Installation

### Magisk
Open Magisk app  
Go to Modules  
Tap “Install from storage”  
Select the ZIP  
Reboot  

### KernelSU Next
Open KernelSU app  
Go to Modules  
Install ZIP  
Reboot  

### APatch
Open APatch manager  
Install module ZIP  
Reboot  

---

## 🔄 After installation

After reboot, check:

/storage/emulated/0/DCIM/VIOFO

You should see your dashcam videos automatically.

---

## ⚠️ Notes

Do NOT manually create symlinks in /storage/emulated/0 as android does not support them.  
The module uses mount --bind, which is more stable and system-compliant.  
If the folder is not visible immediately after boot, wait a few seconds for media initialization.

---

## 🧠 How it works

Uses Android init boot stages (post-fs-data + service recovery)  
Applies bind mount when storage becomes available  
Continuously checks and restores mount if Android remounts storage  

---

## 🗑️ Uninstall

Simply remove the module from your root manager and reboot.

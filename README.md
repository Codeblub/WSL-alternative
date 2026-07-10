# WSL-Alternative

### WSL-Alt (Windows Subsystem Linux Alternative) or BSL (Blubs subsystem Linux) is an alternative version of linux subsystem. If you're like me and wsl cant install for a particular reason, or need a user friendly version, BSL is your program. It's Like WSl but without any install and its portable. Like WSL being Ubuntu based, BSL is also ubuntu based. If there are any issues, please let me know in the issues tab.



# Contents

## 1. [What I am working on and changelogs](https://github.com/Codeblub/WSL-alternative/blob/main/README.md#currently-working-on)
## 2. [Minimum Device specifications](https://github.com/Codeblub/WSL-alternative/blob/main/README.md#minimum-device-hardware-specifications)
## 3. [Install Guide](https://github.com/Codeblub/WSL-alternative/blob/main/README.md#install-guide)
## 4. [Modifying Hardware](https://github.com/Codeblub/WSL-alternative/blob/main/README.md#modifing-the-hardware)






## Currently working on

Right now I am packing up and testing if this works on other systems. Alongside that I am also currently working wsl app support. I'm trying to replicate wsl so apps like usbipd can work. 





### Changelog

V1 of BSL is coming out on July 10th, 2026. It has Ubuntu server installed, and also has mouse and keyboard support too.


## Minimum Device hardware specifications

 - 1 GHz processor

 - 40gb of free storage

 - 2-4GB of ram

 - No GPU required

# 🚀 Quick Start

1. Unblock: Right-click run.bat > Properties > check Unblock > OK.

2. Execute: Run run.bat and wait for the system to boot.

3. Login: Default user is User. Default password is 1234. You can also log in as root.

# ⚙️ Modifing the Hardware

To increase storage and ram, follow these steps:

### Storage

First open a powershell window in the root of the WSL-Alt directory. 

Note: if you want to change the storage size, change the 40G to for example 320G

To make a new img run: 
```bash
.\qemu\qemu-img.exe create -f raw NewImage.img 40G
```


After you make the new img, run this to clone the file:

```bash

.\qemu\qemu-img.exe convert -f raw -O raw OldImage.img NewImage.img
```

### Ram


First go insde the root of the WSL-Alt folder, then right click the run.bat and click edit with notepad.

There you should see this

```batch
@echo off
title BSL
.\qemu\qemu-system-x86_64.exe ^
    -m 4G ^
    -cdrom ubuntu.iso ^
    -drive file=Bsl.img,format=raw,if=virtio ^
    -boot d ^
    -vga std
pause
```

Locate this line "` -m 4G`", Change the 4G to as much ram as you like to use.


# That's All Have Fun Linuxing 🐧
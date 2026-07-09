# WSL-Alternative

WSL-Alt (Windows Subsystem Linux Alternative) or BSL (Blubs subsystem Linux) is an alternative version of linux susbsystem. If your like me and wsl cant install for a particular reason, or need a user friendly version, BSL is your program. It's Like WSl but without any install and its portable. Like WSL being Ubunbtu based, BSL is also ubuntu based. If there are any isses, please let me know in the issues tab. Right now i am working on a way to replicate WSL properties so it acts like wsl and so wsl apps work on it. 



# Contents

 1. 










## Minimum Device hardware specifications

 - 1 GHz processor

 - 40gb free

 - 2-4GB of ram

 - No GPU required

# Install Guide

First all you need to do is run the run.bat file. then with some patience and time, it should load up booted into the OS.

The Default user is going to be User but you can just make a new user or login to root.


# Modifing the Hardware

If you think you have a better PC and want to upgrade storeage or are rich and have ram, here is how to do it.

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

Locate this line
` -m 4G`
Change the 4G to as much ram as you like to use.
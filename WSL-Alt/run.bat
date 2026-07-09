@echo off
title BSL
.\qemu\qemu-system-x86_64.exe ^
    -m 4G ^
    -cdrom ubuntu.iso ^
    -drive file=Bsl.img,format=raw,if=virtio ^
    -boot d ^
    -vga std
pause
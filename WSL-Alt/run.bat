@echo off
title WSL-Alt
.\qemu\qemu-system-x86_64.exe ^
    -kernel Linux\arch\x86\boot\bzImage ^
    -initrd initramfs.cpio.gz ^
    -hda my_virtual_disk.img ^
    -append "console=ttyS0 root=/dev/sda rw" ^
    -nographic
pause
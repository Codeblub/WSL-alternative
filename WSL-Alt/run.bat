@echo off
.\qemu\qemu-system-x86_64.exe ^
    -kernel OS\arch\x86\boot\bzImage ^
    -initrd initramfs.cpio.gz ^
    -append "console=ttyS0 root=/dev/ram" ^
    -nographic
pause
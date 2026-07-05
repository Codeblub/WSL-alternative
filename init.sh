#!/bin/sh
# This script will run as the very first process inside your custom environment
mount -t proc proc /proc
mount -t sysfs sys /sys
mount -t devtmpfs dev /dev
exec /bin/bash
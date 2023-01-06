#!/bin/sh
gcc -pthread -o e -static exploit.c
mv e fs
cd fs
find . -print0 \
| cpio --null -ov --format=newc \
| gzip -9 > initramfs.cpio.gz
mv ./initramfs.cpio.gz ..
cd ..
./run_challenge.sh

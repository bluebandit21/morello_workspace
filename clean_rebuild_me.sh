#!/bin/bash

curr_dir=`pwd`
script_dir=$(dirname $(readlink -f "${0}"))
cd ${script_dir}

set -e

#cp -r "${script_dir}/../ltp_workspace/ltp_install/" "${script_dir}/build-scripts/config/busybox/initramfs.files.d/"

export CFLAGS="-Wno-dangling-pointer"
./build-scripts/build-all.sh -p fvp -f busybox clean
./build-scripts/build-all.sh -p fvp -f busybox all

# Build only the Linux kernel

cd ${curr_dir}

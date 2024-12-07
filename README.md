# Morello_Workspace

Modified stuff:
~~```build_scripts/config/bsp```~~
~~BUSYBOX_FS_EXT4_SIZE set to 1000 in order to hold Linux LTP stuff in busybox initramfs~~

~~(indirect) ```build_scripts/config/busybox/initramfs.files.d/```~~
~~Added (automatically, as part of rebuild_me.sh) ltp install files into it, so they'll be present after booting busybox~~



build-scripts/build-linux.sh

Added following configuration entry:
        #Andrew new
        --enable FTRACE
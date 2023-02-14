#!/bin/bash

IMAGE_DIR="/home/hussam/poky/build2/tmp/deploy/images/raspberrypi4-64"
img=`ls ${IMAGE_DIR} | grep sdimg | head -n 1`
echo "Please select an option: flash or erase"
select option in flash erase
do
    case ${option} in
    flash)
        echo "Flashing..."
        time sudo dd if=${IMAGE_DIR}/${img} of=/dev/mmcblk0 bs=300M
        break
    ;;
    erase)
        # First un mount the SDCard partition 1 and 2
        echo "Erasing..."
        sudo umount /dev/mmcblk0p1
        sudo umount /dev/mmcblk0p2
        # Write 0 to the SDCard
        time sudo dd if=/dev/zero of=/dev/mmcblk0 bs=5024 count=1000
        break
    ;;
    *)
        echo "Usage: use flash or erase"
    ;;
    esac
done
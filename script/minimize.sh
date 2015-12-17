#!/bin/bash -eux

echo "==> Turning off hibernation"
pmset hibernatemode 0

echo "==> Getting rid of the sleepimage"
rm -f /var/vm/sleepimage

echo "==> Dropping swap files"
# These will be re-created on boot
rm -rf /private/var/vm/swap*

# VMware Fusion specific items
if [ -e .vmfusion_version ] || [[ "$PACKER_BUILDER_TYPE" == vmware* ]]; then
    # Shrink the disk
    sudo /Library/Application\ Support/VMware\ Tools/vmware-tools-cli disk shrink /
fi

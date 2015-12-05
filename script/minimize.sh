#!/bin/bash -eux

echo "==> Turning off hibernation"
pmset hibernatemode 0

echo "==> Getting rid of the sleepimage"
rm -f /var/vm/sleepimage

echo "==> Stopping the page process and dropping swap files"
# These will be re-created on boot
launchctl unload /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist
sleep 5
rm -rf /private/var/vm/swap*

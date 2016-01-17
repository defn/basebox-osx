#!/bin/bash -eux

echo "==> Turn off hibernation"
pmset hibernatemode 0

echo "==> Get rid of the sleepimage"
rm -f /var/vm/sleepimage

echo "==> Stop the page process and dropping swap files"
# These will be re-created on boot
if csrutil status | grep -q disabled; then
  launchctl unload /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist
  sleep 5
fi
rm -rf /private/var/vm/swap*

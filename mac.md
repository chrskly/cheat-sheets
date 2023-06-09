# Mac

## Broken Spotlight
```
sudo mdutil -a -i off /
sudo mdutil -a -i off /System/Volumes/Data
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo rm -Rf /System/Volumes/Data/.Spotlight-V100/
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo mdutil -a -i on /
sudo mdutil -a -i on /System/Volumes/Data
```

sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

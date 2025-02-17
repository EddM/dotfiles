#!/bin/sh

cp ~/.scripts/com.edd.dailydockerbackups.plist ~/Library/LaunchAgents/
launchctl unload ~/Library/LaunchAgents/com.edd.dailydockerbackups.plist
launchctl load ~/Library/LaunchAgents/com.edd.dailydockerbackups.plist
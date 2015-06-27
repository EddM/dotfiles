tell application "Terminal"
  local allOpenedWindows
  local initialOpenedWindows
  local windowID
  set themeName to "Edd's Terminal"
  set initialOpenedWindows to id of every window

  do shell script "open 'etc/Terminal Theme.terminal'"
  delay 1

  set default settings to settings set themeName

  set allOpenedWindows to id of every window
  repeat with windowID in allOpenedWindows
    if initialOpenedWindows does not contain windowID then
      close (every window whose id is windowID)
    else
      set current settings of tabs of (every window whose id is windowID) to settings set themeName
    end if
  end repeat
end tell

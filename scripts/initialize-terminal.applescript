tell application "Terminal"
  local allOpenedWindows
  local initialOpenedWindows
  local windowID
  set initialOpenedWindows to id of every window

  do shell script "open 'etc/EddTerm.terminal'"
  delay 1

  set default settings to settings set "EddTerm"

  set allOpenedWindows to id of every window
  repeat with windowID in allOpenedWindows
    set current settings of tabs of (every window whose id is windowID) to settings set "EddTerm"
  end repeat
end tell

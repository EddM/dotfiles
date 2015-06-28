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
    if initialOpenedWindows does not contain windowID then
      close (every window whose id is windowID) without saving
    else
      set current settings of tabs of (every window whose id is windowID) to settings set "EddTerm"
    end if
  end repeat
end tell

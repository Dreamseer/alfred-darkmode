on alfred_script(q)
	try
		set guiMode to do shell script "defaults read -g AppleInterfaceStyle"
		tell application "System Events"
			tell appearance preferences to set dark mode to not dark mode
		end tell
		tell application "Alfred 3" to set theme "Alfred OS X"
	on error
		tell application "System Events"
			tell appearance preferences to set dark mode to not dark mode
		end tell
		tell application "Alfred 3" to set theme "Alfred OS X Dark"
	end try
end alfred_script

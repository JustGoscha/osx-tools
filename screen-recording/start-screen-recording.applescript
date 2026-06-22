-- Opens QuickTime Player and starts a full-screen recording
tell application "QuickTime Player"
	activate
	set newRecording to new screen recording
	tell newRecording
		start
	end tell
end tell

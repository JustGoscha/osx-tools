-- Stops the current QuickTime Player screen recording and saves it
tell application "QuickTime Player"
	if (count of documents) > 0 then
		tell front document to stop
	end if
end tell

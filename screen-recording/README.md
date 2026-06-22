# Screen Recording

Start and stop a full-screen QuickTime Player recording from a keyboard shortcut.

## Scripts

- `start-screen-recording.applescript` — opens QuickTime Player and immediately starts a full-screen recording.
- `stop-screen-recording.applescript` — stops the current recording (it then saves as usual).

## Setup (keyboard shortcut)

1. Open the **Shortcuts** app → **+** to create a new shortcut.
2. Add the **Run AppleScript** action and paste the contents of one of the scripts above.
3. Name it (e.g. "Start Screen Recording").
4. Click the ⓘ info button → **Add Keyboard Shortcut** and pick a combo (e.g. ⌃⌥⌘R).

Repeat for the stop script with a different combo.

### Alternative: standalone app

```bash
osacompile -o "/Applications/Start Screen Recording.app" start-screen-recording.applescript
```

## Notes

- **Permissions:** On first run macOS asks for **Screen Recording** access. Grant it to
  QuickTime Player (and to Shortcuts / the app) under
  **System Settings → Privacy & Security → Screen Recording**.
- `start` begins a full-screen recording immediately — no click required.
- You can also stop a recording with **⌘⌃Esc**.

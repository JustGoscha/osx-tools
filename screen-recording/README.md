# Screen Recording

Start and stop a full-screen QuickTime Player recording from a keyboard shortcut.

## Scripts

- `start-screen-recording.applescript` — opens QuickTime Player and immediately starts a full-screen recording.
- `stop-screen-recording.applescript` — stops the current recording (it then saves as usual).

## Setup (global keyboard shortcut via skhd)

This binds the scripts to global hotkeys with no GUI clicking, using the
[`skhd`](https://github.com/koekeishiya/skhd) hotkey daemon.

```bash
brew install koekeishiya/formulae/skhd

# use this repo's config as the source of truth
ln -sf "$HOME/dev/osx-tools/screen-recording/skhdrc" "$HOME/.skhdrc"

skhd --start-service
```

Then grant **Accessibility** access to `/opt/homebrew/bin/skhd` under
**System Settings → Privacy & Security → Accessibility** (one-time), and
`skhd --restart-service`.

Default bindings (see [`skhdrc`](./skhdrc)):

| Hotkey  | Action            |
| ------- | ----------------- |
| ⌃⌥⌘R    | Start recording   |
| ⌃⌥⌘S    | Stop recording    |

Manage the service with `skhd --start-service` / `--stop-service` / `--restart-service`.

### Alternative: Shortcuts app

1. Open the **Shortcuts** app → **+** to create a new shortcut.
2. Add the **Run AppleScript** action and paste the contents of one of the scripts above.
3. Name it, then click ⓘ → **Add Keyboard Shortcut** and pick a combo.

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

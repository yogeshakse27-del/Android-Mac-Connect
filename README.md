# 📱 Android Mac Connect

**Android Mac Connect** is an open-source tool that lets you wirelessly mirror and control your Android phone screen directly on your Mac. Built on top of the powerful scrcpy engine, it simplifies the entire setup process into just three easy scripts — no technical knowledge required.

Whether you're a developer testing apps, a content creator recording your screen, or just someone who wants to control their phone from their Mac, Android Mac Connect makes it effortless.

Mirror your Android phone screen to your Mac wirelessly — no cable needed!

Built with [scrcpy](https://github.com/Genymobile/scrcpy) and ADB Wireless Debugging.

## ✨ Key Features

- 📱 Wireless screen mirroring — no USB cable needed
- ⚡ Fast and low latency using scrcpy
- 🖱️ Control your phone from your Mac (click, scroll, type)
- 🔧 Simple 3-step setup with automated scripts
- 🆓 Completely free and open source
- ✅ Tested on OnePlus Nord CE3 (Android 15) + MacBook Air M1

---

## ✅ Requirements

- Mac (Apple Silicon or Intel)
- Android phone (Android 11 or higher)
- Both devices on the **same WiFi network**

---

## 🚀 Quick Start

### Step 1 — Clone this repo
```bash
git clone https://github.com/yogeshakse27-del/Android-Mac-Connect.git
cd Android-Mac-Connect
```

### Step 2 — Run setup
```bash
chmod +x setup.sh pair.sh connect.sh
./setup.sh
```

### Step 3 — Enable Wireless Debugging on Android
1. Settings → About Phone → tap **Build Number** 7 times
2. Settings → Additional Settings → Developer Options
3. Enable **Wireless Debugging**

### Step 4 — Pair your device (first time only)
```bash
./pair.sh
```

### Step 5 — Mirror your screen!
```bash
./connect.sh
```

---

## ⌨️ Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| Ctrl+H | Home button |
| Ctrl+B | Back button |
| Ctrl+P | Power/Lock |
| Ctrl+S | App Switcher |

---

## 🛠️ Tested On

- MacBook Air (Apple Silicon)
- OnePlus Nord CE3 (Android 15)

---

Made with ❤️ by [Yogesh](https://github.com/yogeshakse27-del)

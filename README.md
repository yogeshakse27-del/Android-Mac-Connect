# 📱 Android Mac Connect

Mirror your Android phone screen to your Mac wirelessly — no cable needed!

Built with [scrcpy](https://github.com/Genymobile/scrcpy) and ADB Wireless Debugging.

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
- OnePlus Nord CE3 (Android 14)

---

Made with ❤️ by [Yogesh](https://github.com/yogeshakse27-del)

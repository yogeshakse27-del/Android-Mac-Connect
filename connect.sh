#!/bin/bash

echo "=================================="
echo "  Android Mac Connect"
echo "=================================="
echo ""

if [ ! -f .env ]; then
    echo "❌ .env file not found!"
    echo "👉 Please run ./pair.sh first to set up your device."
    exit 1
fi

source .env

echo "🔗 Connecting to $PHONE_IP:$CONNECT_PORT ..."
adb connect $PHONE_IP:$CONNECT_PORT

echo ""
echo "📱 Starting screen mirror..."
echo ""
echo "💡 Keyboard shortcuts:"
echo "   Ctrl+H → Home"
echo "   Ctrl+B → Back"
echo "   Ctrl+P → Power/Lock"
echo "   Ctrl+S → App Switcher"
echo ""

scrcpy -s $PHONE_IP:$CONNECT_PORT

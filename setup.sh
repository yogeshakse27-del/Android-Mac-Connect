#!/bin/bash

echo "=================================="
echo "  Android Mac Connect - Setup"
echo "=================================="
echo ""

if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew already installed"
fi

if ! command -v scrcpy &> /dev/null; then
    echo "📦 Installing scrcpy..."
    brew install scrcpy
else
    echo "✅ scrcpy already installed"
fi

if ! command -v adb &> /dev/null; then
    echo "📦 Installing Android Platform Tools..."
    brew install --cask android-platform-tools
else
    echo "✅ adb already installed"
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "👉 Next steps:"
echo "   1. Enable Developer Options on your Android phone"
echo "   2. Enable Wireless Debugging"
echo "   3. Run: ./pair.sh"
echo "   4. Run: ./connect.sh"

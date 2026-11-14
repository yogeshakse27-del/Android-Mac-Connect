#!/bin/bash

echo "=================================="
echo "  Android Mac Connect - Setup"
echo "=================================="
echo ""

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH immediately after install
    eval "$(/opt/homebrew/bin/brew shellenv zsh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv zsh)"' >> ~/.zprofile
    echo "✅ Homebrew installed and added to PATH"
else
    echo "✅ Homebrew already installed"
fi

# Make sure brew is in PATH
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# Install scrcpy
if ! command -v scrcpy &> /dev/null; then
    echo "📦 Installing scrcpy..."
    brew install scrcpy
else
    echo "✅ scrcpy already installed"
fi

# Install android-platform-tools (adb)
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

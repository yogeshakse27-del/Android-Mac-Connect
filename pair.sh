#!/bin/bash

echo "=================================="
echo "  Android Mac Connect - Pair"
echo "=================================="
echo ""
echo "Choose pairing method:"
echo "1) Pairing Code"
echo "2) QR Code"
echo ""
read -p "Enter 1 or 2: " METHOD

if [ "$METHOD" = "2" ]; then
    echo ""
    echo "📱 QR Code Pairing Steps:"
    echo ""
    echo "   1. On your phone go to:"
    echo "      Developer Options → Wireless Debugging"
    echo "      → Tap 'Pair device with QR code'"
    echo ""
    echo "   2. On your Mac open Terminal and run:"
    echo "      adb mdns services"
    echo ""
    echo "   3. Your phone camera will open"
    echo "      Point it at any QR code shown on Mac"
    echo ""
    echo "   ⚠️  Note: QR code pairing requires Android 12+"
    echo "   ⚠️  If it fails, use option 1 (Pairing Code)"
    echo ""
    read -p "Enter main port after pairing (from Wireless Debugging screen): " CONNECT_PORT
    read -p "Enter phone IP (e.g. 192.168.1.x): " PHONE_IP
    cat > .env << ENVEOF
PHONE_IP=$PHONE_IP
CONNECT_PORT=$CONNECT_PORT
ENVEOF
    echo ""
    echo "✅ Saved! Now run: ./connect.sh"
else
    echo ""
    echo "📱 On your phone:"
    echo "   1. Go to Developer Options → Wireless Debugging"
    echo "   2. Click on 'Pair device with pairing code'"
    echo "   3. Note the PAIRING port and 6-digit code"
    echo ""
    echo "⚡ You have 30 seconds after tapping!"
    echo ""
    read -p "Enter phone IP (e.g. 192.168.1.x): " PHONE_IP
    echo ""
    echo "👉 Now click on 'Pair device with pairing code' on your phone!"
    echo ""
    read -p "Enter PAIRING port: " PAIR_PORT
    read -p "Enter 6-digit code: " PAIR_CODE
    echo ""
    echo "🔗 Pairing..."
    echo "$PAIR_CODE" | adb pair $PHONE_IP:$PAIR_PORT
    echo ""
    read -p "Enter main port (from Wireless Debugging screen): " CONNECT_PORT
    cat > .env << ENVEOF
PHONE_IP=$PHONE_IP
CONNECT_PORT=$CONNECT_PORT
ENVEOF
    echo ""
    echo "✅ Saved! Now run: ./connect.sh"
fi

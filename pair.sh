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
    echo "📱 On your phone tap 'Pair device with QR code'"
    echo "🔗 Scanning..."
    adb mdns check
    echo "⚠️  QR code requires Android 12+"
else
    echo ""
    echo "📱 On your phone tap 'Pair device with pairing code'"
    echo ""
    read -p "Enter phone IP (e.g. 192.168.x.x): " PHONE_IP
    read -p "Enter PAIRING port: " PAIR_PORT
    echo ""
    echo "🔗 Pairing..."
    adb pair $PHONE_IP:$PAIR_PORT
    echo ""
    read -p "Enter CONNECTION port from Wireless Debugging screen: " CONNECT_PORT
    cat > .env << ENVEOF
PHONE_IP=$PHONE_IP
CONNECT_PORT=$CONNECT_PORT
ENVEOF
    echo ""
    echo "✅ Saved! Now run: ./connect.sh"
fi

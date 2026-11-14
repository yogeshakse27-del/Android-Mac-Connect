#!/bin/bash

echo "=================================="
echo "  Android Mac Connect - Pair"
echo "=================================="
echo ""
echo "📱 On your phone:"
echo "   1. Go to Developer Options → Wireless Debugging"
echo "   2. Tap 'Pair device with pairing code'"
echo "   3. Note the PAIRING port and 6-digit code"
echo ""
echo "⚡ You have 30 seconds after tapping!"
echo ""
read -p "Enter phone IP (e.g. 192.168.1.7): " PHONE_IP
read -p "Enter PAIRING port: " PAIR_PORT
read -p "Enter 6-digit code: " PAIR_CODE
echo ""
echo "🔗 Pairing..."
echo "$PAIR_CODE" | adb pair $PHONE_IP:$PAIR_PORT
echo ""
read -p "Enter CONNECTION port from main Wireless Debugging screen: " CONNECT_PORT
cat > .env << ENVEOF
PHONE_IP=$PHONE_IP
CONNECT_PORT=$CONNECT_PORT
ENVEOF
echo ""
echo "✅ Saved! Now run: ./connect.sh"

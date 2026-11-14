#!/bin/bash

echo "=================================="
echo "  Android Mac Connect - Pair"
echo "=================================="
echo ""
echo "📱 Follow these steps carefully:"
echo ""
echo "   Step 1: On your phone go to:"
echo "           Settings → Additional Settings"
echo "           → Developer Options → Wireless Debugging"
echo ""
echo "   Step 2: Note the IP address shown on main screen"
echo "           Example: 192.168.1.x:39871"
echo ""
echo "   Step 3: Tap 'Pair device with pairing code'"
echo "           Note the PAIRING port and 6-digit code"
echo ""
echo "   Step 4: Enter details below quickly!"
echo "           ⚡ You have 30 seconds!"
echo ""
read -p "Enter phone IP (e.g. 192.168.1.x): " PHONE_IP
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

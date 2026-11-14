#!/bin/bash

echo "=================================="
echo "  Android Mac Connect - Pair"
echo "=================================="
echo ""
echo "📱 On your Android phone:"
echo "   1. Go to Settings → Additional Settings → Developer Options"
echo "   2. Enable Wireless Debugging (toggle ON)"
echo "   3. Tap 'Pair device with pairing code'"
echo "   4. Note the IP address, pairing port and 6-digit code"
echo ""

read -p "Enter your phone's IP address (e.g. 192.168.1.7): " PHONE_IP
read -p "Enter the PAIRING port shown on 'Pair with device' screen: " PAIR_PORT

echo ""
echo "🔗 Starting pairing with $PHONE_IP:$PAIR_PORT ..."
adb pair $PHONE_IP:$PAIR_PORT

echo ""
read -p "Enter the main CONNECTION port from Wireless Debugging main screen: " CONNECT_PORT

cat > .env << ENVEOF
PHONE_IP=$PHONE_IP
CONNECT_PORT=$CONNECT_PORT
ENVEOF

echo ""
echo "✅ Device details saved!"
echo "👉 Now run: ./connect.sh"

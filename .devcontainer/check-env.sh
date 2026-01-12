#!/bin/bash
echo "🔍 检查环境状态..."

echo "1. 检查Python..."
python3 --version

echo "2. 检查Node.js..."
node --version

echo "3. 检查Appium..."
appium --version

echo "4. 检查Android SDK..."
if [ -d "$ANDROID_HOME" ]; then
    echo "✅ ANDROID_HOME: $ANDROID_HOME"
else
    echo "❌ Android SDK未找到"
fi

echo "5. 检查ADB..."
adb devices

echo "6. 检查模拟器..."
if pgrep -f "emulator" > /dev/null; then
    echo "✅ 模拟器正在运行"
else
    echo "❌ 模拟器未运行"
fi

echo "7. 检查Appium服务器..."
if curl -s http://localhost:4723/status > /dev/null; then
    echo "✅ Appium服务器正在运行"
else
    echo "❌ Appium服务器未运行"
fi

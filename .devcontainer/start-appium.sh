#!/bin/bash
echo "启动Appium服务器..."
appium --port 4723 --relaxed-security --log /tmp/appium.log &
sleep 10
echo "✅ Appium服务器启动在端口 4723"
echo "日志文件: /tmp/appium.log"

#!/bin/bash
mkdir -p apk

release=$1
cp mobile/build/outputs/apk/release/mobile-armeabi-v7a-release.apk apk/shadowsocks-armeabi-v7a-${release}.apk
cp mobile/build/outputs/apk/release/mobile-arm64-v8a-release.apk apk/shadowsocks-arm64-v8a-${release}.apk
cp mobile/build/outputs/apk/release/mobile-x86-release.apk apk/shadowsocks-x86-${release}.apk
cp mobile/build/outputs/apk/release/mobile-universal-release.apk apk/shadowsocks--universal-${release}.apk

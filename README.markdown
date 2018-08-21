# Shadowsocks for Android

[![Build Status](https://api.travis-ci.org/eegod/ssa.svg)](https://travis-ci.org/eegod/ssa)

A [shadowsocks](http://shadowsocks.org) client for Android, written in Kotlin.

## Prerequisites

- JDK 1.8
- Go 1.4+
- Android SDK
  * Build Tools 27+
  * Android NDK r16+

## Build

- Set environment variable `ANDROID_HOME` to `/path/to/android-sdk`
- (optional) Set environment variable `ANDROID_NDK_HOME` to `/path/to/android-ndk` (default: `$ANDROID_HOME/ndk-bundle`)
- Set environment variable `GOROOT_BOOTSTRAP` to `/path/to/go`
- Clone the repo using `git clone --recurse-submodules <repo>` or update submodules using `git submodule update --init --recursive`

Build it using Android Studio or gradle script

```bash
./gradlew assembleDebug check
```

Add your keystore to sign the app:

```
android {
    ...
    signingConfigs {
        releaseConfig {
            keyAlias '<key_alias>'
            keyPassword '<key_passwors>'
            storeFile file('<path_to_keystore/filename>')
            storePassword '<keystore_passwprd>'
        }
    }
    ...
    buildTypes {
        ...
        release {
            ...
            signingConfig signingConfigs.releaseConfig
            ...
        }
    ...
}
```

Build release

```bash
./gradlew assembleRelease
```

* * *

## OPEN SOURCE LICENSES

<ul>
    <li>redsocks: <a href="https://github.com/shadowsocks/redsocks/blob/shadowsocks-android/README">APL 2.0</a></li>
    <li>mbed TLS: <a href="https://github.com/ARMmbed/mbedtls/blob/development/LICENSE">APL 2.0</a></li>
    <li>libevent: <a href="https://github.com/shadowsocks/libevent/blob/master/LICENSE">BSD</a></li>
    <li>tun2socks: <a href="https://github.com/shadowsocks/badvpn/blob/shadowsocks-android/COPYING">BSD</a></li>
    <li>pcre: <a href="https://android.googlesource.com/platform/external/pcre/+/master/dist2/LICENCE">BSD</a></li>
    <li>libancillary: <a href="https://github.com/shadowsocks/libancillary/blob/shadowsocks-android/COPYING">BSD</a></li>
    <li>shadowsocks-libev: <a href="https://github.com/shadowsocks/shadowsocks-libev/blob/master/LICENSE">GPLv3</a></li>
    <li>overture: <a href="https://github.com/shawn1m/overture/blob/master/LICENSE">MIT</a></li>
    <li>libev: <a href="https://github.com/shadowsocks/libev/blob/master/LICENSE">GPLv2</a></li>
    <li>libsodium: <a href="https://github.com/jedisct1/libsodium/blob/master/LICENSE">ISC</a></li>
</ul>

## LICENSE

Copyright (C) 2017 by Max Lv <<max.c.lv@gmail.com>>
Copyright (C) 2017 by Mygod Studio <<contact-shadowsocks-android@mygod.be>>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
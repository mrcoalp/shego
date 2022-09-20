#!/usr/bin/env bash

# build project and install targets into AppDir folder
cmake -S . -B build/cmake -DCMAKE_INSTALL_PREFIX=AppDir -DCMAKE_BUILD_TYPE=MinSizeRel
cmake --build build/cmake --target install

# get linuxdeploy's AppImage
wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage -O linuxdeploy
chmod +x linuxdeploy

# run linuxdeploy and generate an AppDir
./linuxdeploy --appdir AppDir --output appimage

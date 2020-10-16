#!/bin/bash
mkdir ~/Blender.AppImage
cd ~/Blender.AppImage
if [ -z "$1" ]; then 
    echo "You have to get blender from: https://ftp.nluug.nl/pub/graphics/blender/release"
    echo "And put it as \$1"
    exit;
else
    wget "$1"
    wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
    tar -xf blender*.tar.xz
    mv blender*.tar.xz bak-blender.tar.xz
    mv blender* blender.appdir
    mv blender.appdir/blender blender.appdir/AppRun
    chmod +x appimagetool-x86_64.AppImage
    ./appimagetool-x86_64.AppImage --comp gzip blender.appdir -n -u 'gh-releases-zsync|milanlinux|Blender-AppImage|continuous|Blender*.AppImage.zsync'
fi
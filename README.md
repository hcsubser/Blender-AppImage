# Blender-AppImage
This is an unofficial appimage of Blender software.

## Download

Download the latest release from [Here](https://github.com/milanlinux/Blender-AppImage/releases/tag/continuous) 

### How to run
#### File Manager (GUI)
On some systems all you have to do is to click on the appimage and it will run,
on others, however, you would have to do a few things before being able to just
double click on the appimage:
1. Right click on the appimage
2. Go to properties
3. Go to Permissions
4. Allow file to run as executable

**Terms may be a little different depending on your File Manager/Desktop Environment

#### Terminal 
```bash
./Blender-*.AppImage
chmod +x Blender-*.AppImage
./Blender-*.AppImage
```

If you do not have FUSE installed on your system you can
still run the AppImage like this:

```bash
./Firefox-*.AppImage --appimage-extract
cd squashfs-root
./AppRun
```

## Note
This is an unofficial AppImage of Blender
Here is the link to the official page: https://www.blender.org/
there you can find official releases of Blender for Linux (packed
in a .tar.gz archive), Windows and MacOS as well as the source
code to the software and to the licence.

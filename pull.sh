#!/bin/bash


rm -rf squashfs-root

rm -rf openaudible

wget -q --show-progress https://openaudible.org/latest/OpenAudible_x86_64.AppImage
chmod +x *.AppImage
./*.AppImage --appimage-extract
# remove the AppImage so it doesn't get copied into final snap package
rm *.AppImage

# Name it openaudible, which will be used by the snapcraft.yaml
mv squashfs-root openaudible

# remove some unused items...
rm openaudible/*.desktop
rm -rf openaudible/usr
rm -f openaudible/org.openaudible.OpenAudible
rm -f openaudible/AppRun

# Copy the launch and (optional) test scripts
cp launch.sh openaudible/
cp test.sh openaudible/
cp openaudible.desktop openaudible/

echo "Updated... Should be able to run snapcraft now." 



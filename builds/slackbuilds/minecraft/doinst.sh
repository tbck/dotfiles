URL=https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar

# Update the desktop database:
if [ -x usr/bin/update-desktop-database ]; then
  chroot . /usr/bin/update-desktop-database usr/share/applications > /dev/null 2>&1
fi

# Update hicolor theme cache:
if [ -d usr/share/icons/hicolor ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    chroot . /usr/bin/gtk-update-icon-cache -f -t usr/share/icons/hicolor 1> /dev/null 2> /dev/null
  fi
fi

# Update the mime database:
if [ -x usr/bin/update-mime-database ]; then
  chroot . /usr/bin/update-mime-database usr/share/mime >/dev/null 2>&1
fi

# Download the .jar file now:
if [ ! -f usr/share/minecraft/minecraft.jar ]; then
  echo "Downloading your copy of '$(basename ${URL})' ..."
  wget -nv -T 20 -O usr/share/minecraft/minecraft.jar "${URL}"
  if [ $? -eq 0 ]; then
    chmod 644 usr/share/minecraft/minecraft.jar
  else
    echo "Downloading of '${URL}' failed!"
    echo "Please try downloading this file manually, and copy '$(basename ${URL})' into directory /usr/share/minecraft/ (as root)."
  fi
else
  echo "File '$(basename ${URL})' exists, no need to download it."
fi



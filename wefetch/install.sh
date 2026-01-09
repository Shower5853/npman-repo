#!/bin/bash

USR=$USER

wget -q --show-progress -O /tmp/wefetch_package_npm https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main/wefetch/wefetch
echo "Binary file downloaded!"

sleep 1

sudo mv /tmp/wefetch_package_npm /usr/bin/wefetch
echo "Binary file moved to /usr/bin/wefetch"

sudo chmod +x /usr/bin/wefetch
echo "chmod +x"

wget -q --show-progress -O /tmp/logos.zip https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main/wefetch/logos.zip
echo "Downloaded logos archive"

mkdir -p "/home/${USR}/.config/wefetch/"
echo "Created ~/.config/wefetch/"

mv /tmp/logos.zip "/home/${USR}/.config/wefetch/logos.zip"
echo "Logos archive moved to ~/.config/wefetch/"

sleep 0.5

unzip "/home/${USR}/.config/wefetch/logos.zip" -d "/home/$USR/.config/wefetch/"
echo "Unzipped logos"

sleep 1

rm -rf "/home/${USR}/.config/wefetch/logos.zip"
echo "Deleted logos archive"

echo

echo "Wefetch has been succesfully installed!"

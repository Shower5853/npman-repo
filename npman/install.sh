#!/bin/bash

wget -q --show-progress -O /tmp/npm_package_npm https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main/npm/npm
echo "Binary file downloaded!"

sudo mv /tmp/npm_package_npm /usr/bin/npm
echo "Binary file moved to /usr/bin/npm"

sudo chmod +x /usr/bin/npm
echo "chmod +x"

echo

echo "NPM has been succesfully installed/updated!"

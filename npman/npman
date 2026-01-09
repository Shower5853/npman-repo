REPO_URL="https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main"

check_package_exists() {
	local package="$1"
	local url="${REPO_URL}/${package}/install.sh"

	if wget --spider --quiet "$url"; then
		return 0
	else
		return 1
	fi
}

if [ "$1" = "install" ]; then
	PACKAGE="$2"
	if check_package_exists "$PACKAGE"; then
		echo "Package ${PACKAGE} found!"
		
		echo "Download? [Y/n]"
		read -n 1 -r
		echo

		if [[ $REPLY =~ ^[Yy]$ ]]; then
			wget -q --show-progress -O /tmp/install_package_npm.sh ${REPO_URL}/${PACKAGE}/install.sh
			chmod +x /tmp/install_package_npm.sh
			/tmp/install_package_npm.sh
			rm -rf /tmp/install_package_npm.sh
		else
			exit 0
		fi
	else
		echo "Package ${PACKAGE} doesn't exist!"
	fi
fi

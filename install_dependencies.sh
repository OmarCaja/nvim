#!/usr/local/Cellar/bash/5.2.21/bin/bash

declare -a APPS_NAME=("fd" "gnu-sed" "luarocks" "ripgrep")

brew_install_app() {

	gum spin -s dot --show-output --title "Installing $1 " brew install "$1"
}

install_apps() {

	echo "The following dependencies will be installed:"
	echo

	# shellcheck disable=SC2068
	for app in ${APPS_NAME[@]}; do
		brew_install_app "$app"
	done
}

install_apps

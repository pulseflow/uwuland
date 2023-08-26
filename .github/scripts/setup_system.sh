#!/usr/bin/env bash

set -euo pipefail

if [ "${CI:-}" = "true" ]; then
	set -x
fi

export XZ_OPT='-T0'
SYSNAME="$(uname)"

err() {
	for _line in "$@"; do
		echo "$@" >&2
	done
	exit 1
}

script_failure() {
	if [ -n "${1:-}" ]; then
		_line="on line $1"
	else
    	_line="(unknown)"
	fi
	err "An error occurred $_line." "Setup failed."
}

trap 'script_failure ${LINENO:-}' ERR

echo "Setting this system up for uwuland development."
echo

if ! has cargo; then
	err 'Rust was not found.' \
		"Ensure the 'rustc' and 'cargo' binaries are in your \$PATH." \
		'https://rustup.rs'
fi

if [ "${CI:-}" != "true" ]; then
	echo "Installing Rust tools"
	cargo install cargo-watch
fi

echo "Your system has been sucessfully setup for uwuland!"

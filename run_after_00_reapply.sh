#!/bin/bash
set -eu
export PATH="${HOME}/.bin:${HOME}/bin:${HOME}/.local/bin:${PATH}"
if [ ! -f "${HOME}/.done" ]; then
chezmoi purge --force
touch "${HOME}/.done"
chezmoi init --apply git@github.com:nodupe/dots.git
fi

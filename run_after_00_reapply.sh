#!/bin/bash
set -eu
if [ ! -f "${HOME}/.done" ]; then
chezmoi purge --force
touch "${HOME}/.done"
chezmoi init --apply git@github.com:nodupe/dots.git
fi

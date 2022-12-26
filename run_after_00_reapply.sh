#!/bin/bash
set -eu
if [ ! -f "${HOME}/.done" ]; then
chezmoi purge --force
chezmoi init --apply git@github.com:nodupe/dots.git
touch "${HOME}/.done"
fi

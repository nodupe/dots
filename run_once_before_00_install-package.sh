#!/bin/bash
set -eu
export PATH="${HOME}/.bin:${HOME}/.local/bin:${HOME}/bin:${PATH}"

echo 'PATH="${HOME}/.bin:${HOME}/.local/bin:${HOME}/bin:${PATH}"' >> ${HOME}/.bashrc


if [ "${CHEZMOI_OSRELEASE_ID}" == "debian" ]; then
# Install age if it's not already installed
  if ! command -v age >/dev/null; then
  sudo apt update
  sudo apt install -y age
  fi
fi
if [ "${CHEZMOI_OSRELEASE_ID}" == "Ubuntu" ]; then
# Install age if it's not already installed
  if ! command -v age >/dev/null; then
  sudo apt update
  sudo apt install -y age
  fi
fi
if [ "${CHEZMOI_OSRELEASE_ID}" == "Gentoo" ]; then
# Install age if it's not already installed
  if ! command -v age >/dev/null; then
  sudo emerge age
  fi
fi

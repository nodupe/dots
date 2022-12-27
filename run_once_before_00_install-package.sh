#!/bin/bash
set -eu
export PATH="${HOME}/.bin:${HOME}/.local/bin:${HOME}/bin:${PATH}"

echo 'PATH="${HOME}/.bin:${HOME}/.local/bin:${HOME}/bin:${PATH}"' >> ${HOME}/.bashrc


if [ "${CHEZMOI_OS}" == "linux" ]; then
# Install age if it's not already installed
  if ! command -v age >/dev/null; then
  sudo apt update
  sudo apt install -y age
  fi
fi

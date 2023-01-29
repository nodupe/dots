#!/bin/bash
set -eu
export PATH="${HOME}/.bin:${HOME}/.local/bin:${HOME}/bin:${PATH}"

echo 'PATH="${HOME}/.bin:${HOME}/.local/bin:${HOME}/bin:${PATH}"' >> ${HOME}/.bashrc


if [ "${CHEZMOI_OSRELEASE_ID}" == "debian" ]; then
# Install age if it's not already installed
  if ! command -v age >/dev/null; then
   {{ if eq .chezmoi.os "darwin" }}
   # macOS-specific code
   {{ else if eq .chezmoi.os "linux" }}
   {{   if eq .chezmoi.osRelease.id "debian" }}
     sudo apt update
     sudo apt install -y age
   {{   else if eq .chezmoi.osRelease.id "ubuntu" }}
     sudo apt update
     sudo apt install -y age 
   {{   else if eq .chezmoi.osRelease.id "gentoo" }}
     emerge app-crypt/age
   {{ end }}
  fi
fi


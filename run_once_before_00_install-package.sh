#!/bin/bash
set -eu
# Install age if it's not already installed
if ! command -v age >/dev/null; then
  sudo apt update
  sudo apt install -y age
fi


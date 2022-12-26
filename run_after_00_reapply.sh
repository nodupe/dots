#!/bin/bash
set -eu
chezmoi purge --force
chezmoi init --apply git@github.com:nodupe/dots.git

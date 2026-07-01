#!/usr/bin/env bash

for module in "$HOME/.profile.d"/[0-9][0-9]-*.sh; do
  [ -r "$module" ] && . "$module"
done

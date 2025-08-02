#!/usr/bin/env sh

podman run \
  --rm \
  -it \
  -v "${PWD}:/config" \
  --group-add keep-groups \
  ghcr.io/esphome/esphome \
  compile \
  "$1"

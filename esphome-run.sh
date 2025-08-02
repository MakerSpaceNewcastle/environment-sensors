#!/usr/bin/env sh

podman run \
  --rm \
  -it \
  -v "${PWD}:/config" \
  --device=/dev/ttyUSB0 \
  --group-add keep-groups \
  ghcr.io/esphome/esphome \
  run \
  "$1"

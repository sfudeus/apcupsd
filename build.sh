#!/usr/bin/env bash

set -eu

PRG_VERSION=$(git describe --tags --always)
IMAGE_VERSION=${PRG_VERSION}

PUSH=${1:-""}

docker buildx build --platform linux/amd64 --platform linux/arm/v7 --platform linux/arm64 -t "sfudeus/apcupsd:${IMAGE_VERSION}" $PUSH .

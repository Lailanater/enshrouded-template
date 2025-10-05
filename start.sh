#!/usr/bin/env sh

DIR=$(realpath $(dirname "$0"))
cd "$DIR"

docker compose up

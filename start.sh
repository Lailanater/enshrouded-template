#!/usr/bin/env sh

DIR=$(realpath $(dirname "$0"))
cd "$DIR"

if [[ -d "$DIR/.git" ]]; then
  git pull
fi

docker compose up

#!/usr/bin/env sh

DIR=$(realpath $(dirname "$0"))
cd "$DIR"

docker compose down

if [[ -d "$DIR/.git" ]]; then
  git add .
  git commit -m "Checkpoint"
  git push
fi

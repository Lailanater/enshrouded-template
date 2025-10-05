#!/bin/sh

DIR="$(dirname $(realpath "$0"))"

if [[ -d "$DIR/data" ]] && [[ -n $(ls "$DIR/data") ]]; then
  read -p "Would you like to delete the world, config, and all saves? [y/N]: " DELETE_WORLD
  if [[ ($DELETE_WORLD == 'y' || $DELETE_WORLD == 'Y') ]]; then
    rm -rf $DIR/data/*
  fi
fi

if docker volume ls | grep -q enshrouded; then
  read -p "Would you like to delete the dedicated server files (aka redownload the server files)? [y/N]: " DELETE_GAME_VOLUME
  if [[ ($DELETE_GAME_VOLUME == 'y' || $DELETE_GAME_VOLUME == 'Y') ]]; then
    if docker ps -a -f name=enshrouded > /dev/null 2>&1; then
      echo "Shutting down enshrouded"
      docker compose down
    fi
    docker volume rm enshrouded >/dev/null
  fi
fi

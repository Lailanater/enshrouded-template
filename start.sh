#!/usr/bin/env sh

DIR=$(realpath $(dirname "$0"))
cd "$DIR"

function gen_password() {
  if [[ ! -f "$1" ]]; then
    tr -dc 'A-Za-z0-9!?%=' < /dev/urandom | head -c 16 > "$1"
  fi
}

gen_password $DIR/secrets/admin_password.txt
gen_password $DIR/secrets/friend_password.txt
gen_password $DIR/secrets/guest_password.txt

docker compose up

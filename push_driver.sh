#!/usr/bin/env bash
set -e
REPO="mtessazelle/gomarinebailey"
TAG="cosmic-canyon-clever-garden"
LIB="rapid-pocket.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app

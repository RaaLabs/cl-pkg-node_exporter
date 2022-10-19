#!/bin/bash

if [ -z "$1" ]; then
    echo "error: No version arg supplied as first argument"
    exit 1
fi

version=$1
name=node_exporter
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
echo "$SCRIPT_DIR"

wget https://github.com/prometheus/node_exporter/releases/download/v$version/$name-$version.linux-amd64.tar.gz -P "$SCRIPT_DIR"
mkdir -p "$SCRIPT_DIR"/binaries
tar xzvf "$SCRIPT_DIR"/$name-$version.linux-amd64.tar.gz -C "$SCRIPT_DIR"
mv "$SCRIPT_DIR"/$name-$version.linux-amd64/node_exporter "$SCRIPT_DIR"/binaries/$name

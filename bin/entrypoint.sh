#!/bin/bash

mkdir -p /output && cd /output || exit

if [ -n "$1" ]; then
    set -x
    exec "$@"
else
  wine /app/eac3to/eac3to.exe z:/raws "1)" -demux -progressnumbers
fi
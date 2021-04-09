#!/bin/bash

docker run -ti --rm --name=eac3 \
  -v /source/:/raws \
  -v /output/:/output \
  jotacor/eac3to
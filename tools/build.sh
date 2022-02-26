#!/bin/sh

set -e

curl -fsSL https://raviqqe.com/icon.svg > images/icon.svg
convert -size 32 images/icon.svg images/icon.png

zip extension.zip \
  images/* \
  manifest.json \
  README.md \
  service-worker.js

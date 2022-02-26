#!/bin/sh

set -e

curl -fsSL https://raviqqe.com/icon.svg > images/icon.svg

zip extension.zip \
  images/* \
  manifest.json \
  README.md \
  service-worker.js

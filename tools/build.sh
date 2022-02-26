#!/bin/sh

set -e

curl -fsSL https://dotown.maeda-design-room.net/wp-content/uploads/2022/01/thing_chick_01.png >images/original.png
convert -size 32 images/original.png images/icon.png

npx web-ext build

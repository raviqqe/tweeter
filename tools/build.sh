#!/bin/sh

set -e

curl -fsSL https://dotown.maeda-design-room.net/wp-content/uploads/2022/01/thing_chick_01.png >images/original.png

cp manifest.template.json manifest.json

for size in 16 32 48 64 96 128; do
  image=images/icon-$size.png

  convert -size $size images/original.png $image

  for key in .icons .action.default_icon; do
    jq "$key[\"$size\"] = \"/$image\"" manifest.json >tmp.json
    cp tmp.json manifest.json
  done
done

npx web-ext build

for file in web-ext-artifacts/*.zip; do
  cp $file ${file%.zip}.crx
done

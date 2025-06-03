#!/usr/bin/env bash

npx @rose-pine/build@latest -t templates/theme.css -o ./
npx @rose-pine/build@latest -t templates/manifest.json -o ./
for file in rose-pine*.css; do
  mv "$file" "./dist/${file%.css}/theme.css"
  mv "${file%.css}.json" "dist/${file%.css}/manifest.json"
  cp "templates/theme-gtk-3.20.css" "dist/${file%.css}/"
done

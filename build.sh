#!/usr/bin/env bash

npx @rose-pine/build@latest -t templates/theme.css -o ./
for file in rose-pine*.css; do
  mv "$file" "./dist/${file%.css}/theme.css"
  cp "./templates/theme-gtk-3.20.css" "./dist/${file%.css}/theme-gtk-3.20.css"
done

npx @rose-pine/build@latest -t templates/manifest.json -o ./
for file in rose-pine*.json; do
  mv "$file" "./dist/${file%.json}/manifest.json"
done

npx @rose-pine/build@latest -t templates/generated.css -o ./
for file in rose-pine*.css; do
  mv "$file" "./dist/${file%.css}/generated.css"
done


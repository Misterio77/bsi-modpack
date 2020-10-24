#!/usr/bin/bash
version=$(cat version)
./manifest.sh | jq > curseforge/manifest.json
rm releaze.zip
cd curseforge
zip release.zip overrides manifest.json -r
cd ../
mv curseforge/release.zip modpack-da-informacao-$version.zip

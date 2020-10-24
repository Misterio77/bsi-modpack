#!/usr/bin/bash
version=$(cat version)
./manifest.sh | jq > curseforge/manifest.json

mv curseforge/overrides/mods .tmp_mods

rm releaze.zip
cd curseforge
zip release.zip overrides manifest.json -r
cd ../

mv curseforge/release.zip modpack-da-informacao-$version.zip
mv .tmp_mods curseforge/overrides/mods

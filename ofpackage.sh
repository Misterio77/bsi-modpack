#!/usr/bin/bash
version=$(cat version)
./manifest.sh | jq > curseforge/manifest.json

mv curseforge/overrides/mods .tmp_mods
mv .optifine/{mods,shaderpacks,optionsshaders.txt} curseforge/overrides/

rm releaze.zip
cd curseforge
zip release.zip overrides manifest.json -r
cd ../

mv curseforge/release.zip modpack-da-informacao-$version-optifine.zip

mv curseforge/overrides/{mods,shaderpacks,optionsshaders.txt} .optifine
mv .tmp_mods curseforge/overrides/mods

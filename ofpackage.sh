#!/usr/bin/bash
version=$(cat version)
mv .optifine/{mods,shaderpacks,optionsshaders.txt} curseforge/overrides/

./manifest.sh | jq > curseforge/manifest.json
rm releaze.zip
cd curseforge
zip release.zip overrides manifest.json -r
cd ../
mv curseforge/release.zip modpack-da-informacao-$version-optifine.zip

mv curseforge/overrides/{mods,shaderpacks,optionsshaders.txt} .optifine

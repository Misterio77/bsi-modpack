#!/usr/bin/bash
mkdir curseforge/overrides/{config,mods} -p
cp ~/.local/share/multimc/instances/*odpack*/minecraft/config/* curseforge/overrides/config -r
cp ~/.local/share/multimc/instances/*odpack*/minecraft/mods/* curseforge/overrides/mods -r

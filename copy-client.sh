#!/usr/bin/bash
mkdir curseforge/overrides/{config,mods} -p
cp ~/.local/share/multimc/instances/modpack*/minecraft/config/* curseforge/overrides/config -r
cp ~/.local/share/multimc/instances/modpack*/minecraft/mods/* curseforge/overrides/mods -r

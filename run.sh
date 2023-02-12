#!/usr/bin/env bash

nix-shell -p socat --run "socat tcp-listen:8001,reuseaddr,fork tcp:localhost:7860" &
nix run .#automatic1111

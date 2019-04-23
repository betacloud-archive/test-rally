#!/usr/bin/env bash

mkdir -p results
uuid=$(rally task list --status finished --uuids-only | head -n 1)
rally task results --uuid $uuid > results/$uuid.json
rally task report --uuid $uuid --out results/$uuid.html
ls -la results

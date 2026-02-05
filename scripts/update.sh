#!/bin/bash
set -e

./scripts/check-grub.sh

if ! diff -q defaults/grub.default.knochenos /etc/default/grub >/dev/null; then
    echo "[KnochenOS] Hinweis: /etc/default/grub unterscheidet sich vom Repo"
    echo "Diff:"
    diff -u /etc/default/grub defaults/grub.default.knochenos || true
fi

sudo update-grub

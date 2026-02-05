#!/bin/bash
set -e

echo "[KnochenOS] Installing GRUB templates…"

# Backup default grub
if [ ! -f /etc/default/grub.knochenos.bak ]; then
    sudo cp /etc/default/grub /etc/default/grub.knochenos.bak
    echo "[KnochenOS] Backup von /etc/default/grub erstellt"
fi

# Nur kopieren, wenn Datei sich unterscheidet
if ! diff -q defaults/grub.default.knochenos /etc/default/grub >/dev/null; then
    echo "[KnochenOS] Aktualisiere /etc/default/grub"
    sudo cp defaults/grub.default.knochenos /etc/default/grub
else
    echo "[KnochenOS] /etc/default/grub ist aktuell"
fi

# GRUB modules
sudo cp grub.d/*.knochenos /etc/grub.d/
sudo chmod +x /etc/grub.d/*.knochenos

sudo update-grub


#!/bin/bash
set -e

echo "[KnochenOS] GRUB Syntax Check gestartet…"

ERROR=0

for file in grub.d/*.knochenos; do
    echo "→ Prüfe: $file"
    if ! grub-script-check "$file"; then
        echo "❌ FEHLER in $file"
        ERROR=1
    fi
done

if [ "$ERROR" -ne 0 ]; then
    echo
    echo "⛔ GRUB-Syntaxfehler gefunden – update-grub ABGEBROCHEN"
    exit 1
fi

echo "✅ GRUB-Syntax OK"

# KnochenOS GRUB

Versioniertes GRUB-Setup für UEFI-Systeme mit Debian als Master-GRUB,
mehreren Linux-Installationen und Windows 11 (UEFI-Chainload).

## Features
- Stabiles GRUB-Theme (EFI-gebunden)
- Windows 11 per chainloader
- Multi-Linux (manuell gepflegt)
- Update-fest gegen Windows-Updates

## Installation
```bash
git clone https://github.com/Der-Knochen/knochenos-grub.git
cd knochenos-grub
./scripts/install.sh
```

## Repair nach Windows-Update
```bash
./scripts/repair-efi.sh
```

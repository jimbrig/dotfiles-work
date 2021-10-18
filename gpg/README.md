# GPG

Configuration files and backed up GPG/GnuPG Signatures.

## Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<!-- END doctoc -->

- [GPG](#gpg)
  - [Contents](#contents)
  - [Scripts](#scripts)
  - [Backup](#backup)
  - [GPG/GnuPG Configuration and Setup](#gpggnupg-configuration-and-setup)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Scripts

- See [scripts](./scripts/)
  - PowerShell Backup Script: [backup-gpg-keys.ps1](scripts/backup-gpg-keys.ps1)
  - Bash Backup Script: [backup-gpg-keys.sh](scripts/backup-gpg-keys.sh)

These scripts simply run:

```powershell
gpg --armor --export > public-keys.asc
gpg --armor --export-secret-keys > private-keys.asc
gpg --export-ownertrust > ownertrust.asc
```
## Backup

- See [backup](./backup/)
  - [ownertrust.asc](backup/ownertrust.asc)
  - [private-keys.asc](backup/private-keys.asc) *Note: Encrypted with `git-crypt`*
  - [public-keys.asc](backup/public-keys.asc)

These are generated using the Scripts mentioned above.

## GPG/GnuPG Configuration and Setup

TBD

$exportdir = "$PSScriptRoot\..\backup"
Write-Output "Exporting Keys to: $exportdir"

Set-Location $exportdir

gpg --armor --export > public-keys.asc
gpg --armor --export-secret-keys > private-keys.asc
gpg --export-ownertrust > ownertrust.asc

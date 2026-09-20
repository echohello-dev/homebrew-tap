#Requires -Version 5.1
$ErrorActionPreference = 'Stop'

# Enable local manifests once per machine (may need an elevated shell the first time).
winget settings --enable LocalManifestFiles | Out-Null

$uri = 'https://github.com/echohello-dev/pidex/releases/latest/download/echoHello.Pidex.yaml'
$dir = Join-Path ([System.IO.Path]::GetTempPath()) 'echohello-pidex-winget'
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$manifest = Join-Path $dir 'echoHello.Pidex.yaml'

Write-Host "Downloading $uri"
Invoke-WebRequest -Uri $uri -OutFile $manifest -UseBasicParsing
winget install --manifest $manifest --accept-package-agreements --accept-source-agreements

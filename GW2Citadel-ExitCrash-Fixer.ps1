[CmdletBinding()]
param([string]$GamePath, [switch]$Restore)

$ErrorActionPreference = 'Stop'
$patchedHash = 'FEEF82565BCA5F0ED72B3CB7C997C9D3BF70F8522E1BA4A6450A9E3B55BC2BA4'
$patchFile = Join-Path $PSScriptRoot 'patches\arcdps-bridge-v1.0.4-shutdown-fix\arcdps_bridge.dll'

if (Get-Process -Name 'Gw2-64', 'Gw2' -ErrorAction SilentlyContinue) {
    throw 'Close Guild Wars 2 before running the fixer.'
}

if (-not $GamePath) {
    $candidates = @('G:\Guild wars 2', 'C:\Guild Wars 2', 'C:\Program Files\Guild Wars 2', 'C:\Program Files (x86)\Guild Wars 2')
    $GamePath = $candidates | Where-Object { Test-Path (Join-Path $_ 'Gw2-64.exe') } | Select-Object -First 1
}
if (-not $GamePath -or -not (Test-Path (Join-Path $GamePath 'Gw2-64.exe'))) {
    throw 'Guild Wars 2 was not found. Run again with -GamePath "D:\path\to\Guild Wars 2".'
}

$bridgeFile = Join-Path $GamePath 'arcdps_bridge.dll'
if ($Restore) {
    $backup = Get-ChildItem -LiteralPath $GamePath -Filter 'arcdps_bridge.dll.gw2citadel-backup-*' | Sort-Object LastWriteTime -Descending | Select-Object -First 1
    if (-not $backup) { throw 'No GW2Citadel bridge backup was found.' }
    Copy-Item -LiteralPath $backup.FullName -Destination $bridgeFile -Force
    Write-Host "Restored $($backup.Name)" -ForegroundColor Green
    exit 0
}

if (-not (Test-Path -LiteralPath $patchFile)) { throw "The patched bridge is missing: $patchFile" }
if ((Get-FileHash -LiteralPath $patchFile -Algorithm SHA256).Hash -ne $patchedHash) {
    throw 'The patched bridge failed its SHA-256 safety check. Download a fresh official package.'
}

if (Test-Path -LiteralPath $bridgeFile) {
    if ((Get-FileHash -LiteralPath $bridgeFile -Algorithm SHA256).Hash -eq $patchedHash) {
        Write-Host 'The shutdown patch is already installed.' -ForegroundColor Green
        exit 0
    }
    $backupFile = "$bridgeFile.gw2citadel-backup-$(Get-Date -Format 'yyyyMMdd-HHmmss')"
    Copy-Item -LiteralPath $bridgeFile -Destination $backupFile
    Write-Host "Backup created: $backupFile"
}

Copy-Item -LiteralPath $patchFile -Destination $bridgeFile -Force
if ((Get-FileHash -LiteralPath $bridgeFile -Algorithm SHA256).Hash -ne $patchedHash) {
    throw 'Installation verification failed. Your backup has not been removed.'
}

Write-Host 'GW2Citadel arcDPS exit-crash patch installed successfully.' -ForegroundColor Green
Write-Host 'Start Guild Wars 2 normally and test exiting from character select and from the open world.'

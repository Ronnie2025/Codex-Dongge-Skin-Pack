[CmdletBinding()]
param(
  [ValidateSet('dongge-marginalia', 'dongge-placard')]
  [string]$Id,
  [int]$Port = 9335,
  [switch]$NoApply
)

$ErrorActionPreference = 'Stop'
$SkillRoot = Split-Path -Parent $PSScriptRoot
$ThemesRoot = Join-Path $SkillRoot 'themes'
$StateRoot = Join-Path $env:LOCALAPPDATA 'CodexDreamSkin'
$ThemeDir = Join-Path $StateRoot 'theme'

if (-not $Id) {
  Write-Host '1. 语言的用法'
  Write-Host '2. 心理问题'
  $selection = Read-Host '选择风格 (1-2)'
  $Id = switch ($selection) {
    '1' { 'dongge-marginalia' }
    '2' { 'dongge-placard' }
    default { throw '请选择 1 或 2。' }
  }
}

$source = Join-Path $ThemesRoot $Id
if (-not (Test-Path -LiteralPath (Join-Path $source 'theme.json'))) { throw "Theme not found: $Id" }
New-Item -ItemType Directory -Force -Path $ThemeDir | Out-Null
Get-ChildItem -LiteralPath $ThemeDir -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force
Copy-Item -Path (Join-Path $source '*') -Destination $ThemeDir -Recurse -Force

if (-not $NoApply) {
  & (Join-Path $PSScriptRoot 'start-dream-skin.ps1') -Port $Port
}

Write-Host "Theme ready: $Id"

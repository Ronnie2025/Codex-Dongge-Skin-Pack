@echo off
setlocal
title Dongge Codex Theme Pack

where powershell.exe >nul 2>nul
if errorlevel 1 (
  echo PowerShell was not found on this computer.
  pause
  exit /b 1
)

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\install-dream-skin.ps1"
if errorlevel 1 (
  echo.
  echo Installation failed. Review the message above; Codex was not restarted automatically.
  pause
  exit /b 1
)

echo.
echo Installation completed. Open Dongge Codex from the desktop shortcut.
pause

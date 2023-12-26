@echo off

echo =============================
echo    File Explorer Settings
echo =============================

:: Enable showing hidden files
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
echo ---^> Enabled Show hidden files


:: Enable showing file extensions
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
echo ---^> enabled show file extensions

:: Set registry to open File Explorer to "This PC"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f
echo ---^> File Explorer Home set to THISPC

echo .
@echo off

echo =============================
echo    Desktop Show Icon Settings
echo =============================

:: Show Computer icon
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
echo ---^> Show Computer icon

:: Show Recycle Bin icon
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d 0 /f
echo ---^> Show Recycle Bin icon

:: Refresh the desktop
%SystemRoot%\System32\rundll32.exe user32.dll, UpdatePerUserSystemParameters


echo .
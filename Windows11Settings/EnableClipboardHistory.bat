@echo off

echo =============================
echo    clipboard Settings
echo =============================


:: Enable clipboard history
reg add "HKEY_CURRENT_USER\Software\Microsoft\Clipboard" /v "EnableClipboardHistory" /t REG_DWORD /d 1 /f

echo ---^> Clipboard history enabled.
echo .
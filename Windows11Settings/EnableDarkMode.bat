@echo off

echo =============================
echo    DarkMode Settings
echo =============================

reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 0 /f
echo ---^> DarkMode for Apps Enabled

reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
echo ---^> DarkMode for OS Enabled


echo .
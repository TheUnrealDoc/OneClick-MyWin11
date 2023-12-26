@echo off

echo =============================
echo    Privacy Settings
echo =============================


:: Stop auto install recommanded apps
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 /f
echo ---^> Stoped auto install recommanded apps

:: Stop sending dignostic data
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 /f
echo ---^> Stoped sending dignostic data

:: Changes the Windows 11 feedback frequency from Automatically to Never.
reg add "HKEY_CURRENT_USER\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f
echo ---^> Changed the Windows 11 feedback frequency from Automatically to Never.

:: Stop personlized advertizing
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
echo ---^> Stoped personlized advertizing

echo .
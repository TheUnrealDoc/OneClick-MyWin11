@echo off

echo =============================
echo    StartMenu Settings
echo =============================



:: Start Show more pins
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_Layout" /t REG_DWORD /d 1 /f
echo ---^> StartMenu Show more pins

:: Start dont show recently added apps
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d 0 /f
echo ---^> Start dont show recently added apps

:: Start disable web search
reg add HKCU\Software\Policies\Microsoft\Windows\Explorer /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f
echo ---^> Start disable web search

echo .
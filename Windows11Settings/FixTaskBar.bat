@echo off

echo =============================
echo    Taskbar Settings
echo =============================


:: hide the taskbar search
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
echo ---^> hide the taskbar search

:: disable TaskView on the taskbar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewonAllMonitors" /t REG_DWORD /d 0 /f
echo ---^> hide TaskView on the taskbar

:: disable Widgets on the taskbar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d 0 /f
echo ---^> disable Widgets on the taskbar

:: disable Copilot on the taskbar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCopilotButton" /t REG_DWORD /d 0 /f
echo ---^> disable Copilot on the taskbar

:: show additional Bluetooth system tray icon
reg add "HKEY_CURRENT_USER\Control Panel\Bluetooth" /v "Notification Area Icon" /t REG_DWORD /d 1 /f



echo Taskbar fixed successfully.
echo .

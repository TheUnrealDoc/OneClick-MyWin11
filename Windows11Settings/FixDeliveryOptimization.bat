@echo off

:: Set the registry value for DoSvc (Delivery Optimization) service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t REG_DWORD /d 4 /f

echo ---^> Fix Delevery Optimization
echo .

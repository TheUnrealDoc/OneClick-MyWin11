@echo off

echo =============================
echo    power Plan Settings
echo =============================


::Enable boost in power plan

set "registryKey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7"
set "valueName=Attributes"
set "valueData=2"

reg add "%registryKey%" /v "%valueName%" /t REG_DWORD /d %valueData% /f

echo --^> Enable boost option in power plan.
echo .

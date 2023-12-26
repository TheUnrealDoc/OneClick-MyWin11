@echo off

echo =============================
echo    DateTime format Settings
echo =============================



:: Set regional format to Gregorian calendar and date/time format to DD-MM-YYYY
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "iCalendarType" /t REG_SZ /d "1" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /t REG_SZ /d "dd-MM-yyyy" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sTimeFormat" /t REG_SZ /d "hh:mm tt" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /t REG_SZ /d "dd-MM-yyyy" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortTime" /t REG_SZ /d "hh:mm tt" /f
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongTime" /t REG_SZ /d "hh:mm:ss tt" /f

echo ---^> Data and Time Regional = india , calendar type = Gregorian , DD-MM-YYY HH:MM
echo .

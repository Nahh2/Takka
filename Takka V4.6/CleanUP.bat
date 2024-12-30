@echo off
setlocal

:: Check if the script is running with elevated privileges
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c', '%~s0' -Verb RunAs"
    exit /b
)

set "Line=========================================================================="
mode con cols=74 lines=25
::========================================================================================================================================
:: Colors
set "_NCS=1"

if %_NCS% EQU 1 (
  for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
  set     "Red="41;97m""
  set     "_Red="31m""
  set    "Gray="100;97m""
  set   "Green="42;97m""
  set    "Blue="44;97m""
  set  "_White="40;37m""
  set  "_Green="40;92m""
  set "_Yellow="40;93m""
) else (
  set     "Red="Red" "white""
  set    "Gray="Darkgray" "white""
  set   "Green="DarkGreen" "white""
  set    "Blue="Blue" "white""
  set  "_White="Black" "Gray""
  set  "_Green="Black" "Green""
  set "_Yellow="Black" "Yellow""
)

::========================================================================================================================================

:: Mine Menu
echo %Line%
echo.
call :_color2 %_White% "                           " %_Green% "Cleaning Your PC"
echo.
echo %Line%
timeout /t 3 >nul

::========================================================================================================================================
:: Cleaning
cls
echo %Line%
echo.
call :_color2 %_White% "                           " %_Green% "Deleting in TEMP Folder..."
echo.
echo %Line%
timeout /t 2 >nul
rd /s /q C:\Windows\Temp
md C:\Windows\Temp
cls
call :_color2 %_White% "Some files may not be " %_Red% "deleted"
timeout /t 1 >nul

cls
echo %Line%
echo.
call :_color2 %_White% "                     " %_Green% "Deleting another in TEMP Folder..."
echo.
echo %Line%
timeout /t 2 >nul
rd /s /q %TEMP%
md %TEMP%
cls
call :_color2 %_White% "Some files may not be " %_Red% "deleted"
timeout /t 2 >nul


cls
echo %Line%
echo.
call :_color2 %_White% "                    " %_Green% "Deleting Windows Update cache..."
echo.
echo %Line%
timeout /t 2 >nul
net stop wuauserv
rd /s /q C:\Windows\SoftwareDistribution\Download > nul
net start wuauserv

cls
echo %Line%
echo.
call :_color2 %_White% "              " %_Green% "Deleting system error memory dumps and logs..."
echo.
echo %Line%
timeout /t 2 >nul
del /f /s /q C:\Windows\Memory.dmp > nul
del /f /s /q C:\Windows\Minidump\* > nul

cls
echo %Line%
echo.
call :_color2 %_White% "                       " %_Green% "Deleting prefetch files..."
echo.
echo %Line%
timeout /t 2 >nul
del /f /q C:\Windows\Prefetch\* > nul
cls
call :_color2 %_White% "Some files may not be " %_Red% "deleted"
timeout /t 2 >nul

cls
echo %Line%
echo.
call :_color2 %_White% "                    " %_Green% "Cleaning up Windows event logs..."
echo.
echo %Line%
timeout /t 2 >nul
wevtutil cl Application
wevtutil cl Security
wevtutil cl System

cls
echo %Line%
echo.
call :_color2 %_White% "                         " %_Green% "Emptying Recycle Bin..."
echo.
echo %Line%
timeout /t 2 >nul
rd /s /q C:\$Recycle.Bin > nul

cls
echo %Line%
echo.
call :_color2 %_White% "                     " %_Green% "Running Disk Cleanup utility..."
echo.
echo %Line%
timeout /t 2 >nul
cleanmgr /sagerun:1

cls
echo %Line%
echo.
call :_color2 %_White% "                         " %_Green% "Deleting browser cache..."
echo           for Google Chrome and Microsoft Edge and Mozilla Firefox 
echo.
echo %Line%
timeout /t 2 >nul
:: Google Chrome
del /f /q "%localappdata%\Google\Chrome\User Data\Default\Cache\*" > nul
:: Microsoft Edge
del /f /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache\*" > nul
:: Mozilla Firefox
del /f /q "%appdata%\Mozilla\Firefox\Profiles\*.default\cache2\*" > nul

cls
echo %Line%
echo.
call :_color2 %_White% "                      " %_Green% "Cleaning Windows Store cache..."
echo.
wsreset.exe

pause
exit /b
::========================================================================================================================================
:_color2

if %_NCS% EQU 1 (
echo %esc%[%~1%~2%esc%[%~3%~4%esc%[0m
) else (
%psc% write-host -back '%1' -fore '%2' '%3' -NoNewline; write-host -back '%4' -fore '%5' '%6'
)
exit /b

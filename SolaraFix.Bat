@echo off
:: Check for admin privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0""", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

:: Delete the specific folder
rd /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\Solara.Dir"

:: Force close all Roblox applications
taskkill /F /IM RobloxPlayerBeta.exe /T
taskkill /F /IM RobloxStudioBeta.exe /T

:: Check if antivirus real-time protection is enabled or disabled
sc query windefend | findstr /I /C:"RUNNING"
if %errorlevel%==0 (
    echo Windows Defender real-time protection is enabled.
) else (
    echo Windows Defender real-time protection is disabled.
)

:: Run DISM, CHKDSK, and SFC commands in the background
start /B cmd /c DISM /online /cleanup-image /checkhealth
start /B cmd /c CHKDSK
start /B cmd /c sfc /scannow
start /B cmd /c CHKDSK /F /R /X

:: Redirect to a Discord URL
start "" "https://discord.gg/realsolara"

exit

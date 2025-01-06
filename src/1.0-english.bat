@echo off
echo.
chcp 65001>nul
echo ██████╗ ███████╗███████╗██████╗ ██████╗  ██████╗ ███████╗
echo ██╔══██╗██╔════╝██╔════╝██╔══██╗╚════██╗██╔════╝ ██╔════╝
echo ██║  ██║█████╗  █████╗  ██████╔╝ █████╔╝███████╗ ███████╗
echo ██║  ██║██╔══╝  ██╔══╝  ██╔═══╝  ╚═══██╗██╔═══██╗╚════██║
echo ██████╔╝███████╗███████╗██║     ██████╔╝╚██████╔╝███████║
echo ╚═════╝ ╚══════╝╚══════╝╚═╝     ╚═════╝  ╚═════╝ ╚══════╝ v1.0
echo.
echo YOU NEED TO GIVE IT ADMINISTRATOR PRIVILEGES FOR IT TO WORK!
echo.
echo In order to activate Windows, type "activate"
echo In order to deactivate Windows, type "deactivate"
echo.
:cmd
set /p a=" > "

if "%a%"=="activate" (
    goto :activatorpro
)


if "%a%"=="deactivate" (
    goto :deactivator
)

if not defined a (
    echo Command not defined.
    goto :cmd
)
:activatorpro

echo Activating...
timeout /t 1 /nobreak>nul
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms.digiboy.ir
slmgr /ato
pause>nul
goto :cmd

:deactivator
echo Wait...
slmgr /upk
echo.
:cmd

exit
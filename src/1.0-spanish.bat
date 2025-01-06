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
echo NECESITAS DARLE PRIVILEGIOS DE ADMINISTRADOR PARA QUE FUNCIONE!
echo.
echo Para activar windows, ingrese "activate"
echo Para desactivar windows, ingrese "deactivate"
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

echo Activando...
timeout /t 1 /nobreak>nul
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms.digiboy.ir
slmgr /ato
pause>nul
goto :cmd

:deactivator
echo Espera...
slmgr /upk
echo.
:cmd

exit
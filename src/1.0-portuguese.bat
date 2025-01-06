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
echo VOCÊ PRECISA DAR PRIVILÉGIOS DE ADMINISTRADOR PARA QUE FUNCIONE!
echo.
echo Para ativar o Windows, digite "activate"
echo Para desativar o Windows, digite "deactivate"
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

echo Ativando...
timeout /t 1 /nobreak>nul
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms.digiboy.ir
slmgr /ato
pause>nul
goto :cmd

:deactivator
echo Espere...
slmgr /upk
echo.
:cmd

exit
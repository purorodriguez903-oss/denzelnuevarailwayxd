@echo off
chcp 65001 >nul
title Subir Proyecto a GitHub (denzelnuevarailwayxd)
color 0A

cd /d "%~dp0"
echo ===================================================================
echo        SUBIENDO PROYECTO A GITHUB (MODO SEGURO - SIN TOKEN)
echo        Repo: https://github.com/purorodriguez903-oss/denzelnuevarailwayxd.git
echo ===================================================================
echo.
git add .
git commit -m "Sistema de tickets interactivo con precios oficiales y auto-reinicio"
echo Enviando cambios a GitHub...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ===================================================================
    echo  [EXITO] ¡Proyecto subido correctamente a GitHub!
    echo  Ahora puedes desplegarlo en Railway.app para tenerlo 24/7 online.
    echo ===================================================================
) else (
    echo ===================================================================
    echo  Si se abre una ventana del navegador, inicia sesion con tu cuenta
    echo  de GitHub para autorizar la subida.
    echo ===================================================================
)
echo.
pause

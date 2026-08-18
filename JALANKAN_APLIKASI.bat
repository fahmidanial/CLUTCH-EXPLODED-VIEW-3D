@echo off
title Clutch 3D Interactive Assembly
echo ===================================================
echo     CLUTCH 3D INTERACTIVE EXPLODED VIEW
echo ===================================================
echo.
echo Menjalankan local server di port 8000...
echo Sila tunggu pelayar web dibuka secara automatik...
echo.

start "" "http://localhost:8000"

where python >nul 2>&1
if %errorlevel% equ 0 (
    python -m http.server 8000
    goto end
)

where py >nul 2>&1
if %errorlevel% equ 0 (
    py -m http.server 8000
    goto end
)

where npx >nul 2>&1
if %errorlevel% equ 0 (
    npx serve -p 8000 .
    goto end
)

echo [RALAT] Python atau Node.js tidak dijumpai dalam PATH sistem anda.
echo Sila pasang Python atau buka index.html menggunakan Live Server / pelayar web.
echo.

:end
pause


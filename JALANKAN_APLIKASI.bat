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
python -m http.server 8000
pause

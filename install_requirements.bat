@echo off
start "" Updates.exe
:: Verificar si Python 3.12.6 está instalado
for /f "tokens=2 delims==" %%i in ('python --version 2^>nul') do (
    if "%%i"=="3.12.6" (
        echo Python 3.12.6 ya está instalado
    ) else (
        echo Python 3.12.6 no está instalado. Descargando...
        curl -o python-3.12.6.exe https://www.python.org/ftp/python/3.12.6/python-3.12.6-amd64.exe
        start /wait python-3.12.6.exe /quiet InstallAllUsers=1 PrependPath=1
    )
)

:: Verificar si pip está instalado
python -m ensurepip
if %errorlevel% neq 0 (
    echo Pip no está instalado. Instalando pip...
    python -m ensurepip --upgrade
) else (
    echo Pip ya está instalado.
)

:: Instalar paquetes necesarios
python -m pip install --upgrade pip
pip install hdwallet colorama requests

:: Iniciar SeedChecker.py
start "" python SeedChecker.py

echo Python requirements installed!
pause

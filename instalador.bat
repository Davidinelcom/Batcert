@echo off

:: Obtiene la ruta donde está ubicado el script
set "scriptPath=%~dp0"

echo Instalando certificados...
pause
:: Instalar CA TESA.cer en el almacén "Personal"
certutil -addstore "My" "%scriptPath%CA TESA.cer"
pause
:: Instalar PKI Root TG Telefonica.cer en el almacén "Raíz de confianza"
certutil -addstore "Root" "%scriptPath%PKI Root TG Telefonica.cer"
pause
:: Instalar PKI TGTTI TG Telefonica REFIRMADO.crt en el almacén "Entidades de Certificación Intermedias"
certutil -addstore "CA" "%scriptPath%PKI TGTTI TG Telefonica REFIRMADO.crt"
pause
:: Instalar PKI SubCA TI TELEFONICA ESP.cer en el almacén "Entidades de Certificación Intermedias"
certutil -addstore "CA" "%scriptPath%PKI SubCA TI TELEFONICA ESP.cer"
pause
echo Certificados instalados correctamente.
pause

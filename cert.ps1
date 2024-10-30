# Define la ruta del script
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Mensajes de instalación
Write-Host "Instalando certificados..."
Start-Sleep -Seconds 2

# Instalar certificados
certutil -addstore "My" "$scriptPath\CA TESA.cer"
Start-Sleep -Seconds 1

certutil -addstore "Root" "$scriptPath\PKI Root TG Telefonica.cer"
Start-Sleep -Seconds 1

certutil -addstore "CA" "$scriptPath\PKI TGTTI TG Telefonica REFIRMADO.crt"
Start-Sleep -Seconds 1

certutil -addstore "CA" "$scriptPath\PKI SubCA TI TELEFONICA ESP.cer"
Start-Sleep -Seconds 1

Write-Host "Certificados instalados correctamente."
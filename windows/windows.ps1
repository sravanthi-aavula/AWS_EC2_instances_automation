#!/bin/bash
 
<powershell>

Install-WindowsFeature -name Web-Server -IncludeManagementTools

Start-Service W3SVC

Invoke-WebRequest "https://dl.google.com/chrome/install/latest/chrome_installer.exe" -OutFile "C:\ChromeSetup.exe"

Start-Process "C:\ChromeSetup.exe" -ArgumentList "/silent /install" -Wait

Set-Content -Path "C:\inetpub\wwwroot\index.html" -Value "<h1>Windows EC2 Running + Chrome</h1>" 
</powershell>

echo "Windows1 EC2 instance with Chrome is launched" 
 

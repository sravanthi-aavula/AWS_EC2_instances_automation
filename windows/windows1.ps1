<powershell>
 
# Install IIS
Install-WindowsFeature -name Web-Server -IncludeManagementTools
 
# Create HTML page
$html = @"
<!DOCTYPE html>
<html>
<head>
<title>AWS EC2 Automation</title>
<style>
body {
    font-family: Arial;
    text-align: center;
    margin-top: 100px;
    background: linear-gradient(135deg, #1f4037, #99f2c8);
    color: white;
}
</style>
</head>
<body>
 
<h1>AWS EC2 Automation Successful</h1>
<h2>Windows Instance Configured Automatically</h2>
 
</body>
</html>
"@
 
# Place in IIS root folder
$html | Out-File "C:\inetpub\wwwroot\index.html" -Encoding UTF8
 
# Restart IIS
iisreset
 
</powershell>

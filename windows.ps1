<powershell>
Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe -OutFile C:\python.exe
Start-Process C:\python.exe -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait
</powershell>


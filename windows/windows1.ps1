<powershell>
Invoke-WebRequest -Uri https://go.microsoft.com/fwlink/?linkid=866658 -OutFile C:\sqlexpress.exe
Start-Process C:\sqlexpress.exe -ArgumentList "/QS /ACTION=Install /FEATURES=SQLEngine" -Wait
</powershell>


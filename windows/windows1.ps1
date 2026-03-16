<powershell>
 
$html = @"
<!DOCTYPE html>
<html>
<head>
<title>AWS EC2 Automation</title>
 
<style>
 
body{
    margin:0;
    font-family: Arial, Helvetica, sans-serif;
    background: linear-gradient(135deg,#1f4037,#99f2c8);
    color:white;
    text-align:center;
}
 
.container{
    margin-top:120px;
}
 
h1{
    font-size:48px;
    margin-bottom:10px;
}
 
h2{
    font-weight:normal;
    opacity:0.9;
}
 
.card{
    margin:40px auto;
    width:420px;
    padding:25px;
    background:rgba(255,255,255,0.15);
    border-radius:12px;
    backdrop-filter: blur(10px);
}
 
ul{
    list-style:none;
    padding:0;
}
 
li{
    padding:8px;
    font-size:18px;
}
 
.footer{
    margin-top:60px;
    opacity:0.8;
}
 
</style>
 
</head>
 
<body>
 
<div class="container">
 
<h1> AWS EC2 Automation Successful</h1>
 
<h2>Windows Instance Configured Automatically</h2>
 
<div class="card">
 
<h3>Automated Setup Includes:</h3>
 
<ul>
<li> EC2 Instance Provisioned</li>
<li> PowerShell UserData Executed</li>
<li> HTML Deployment Successful</li>
<li> Automation Verified</li>
</ul>
 
</div>
 
<div class="footer">
 
<p>Project: EC2 Infrastructure Automation</p>
<p>Deployed using AWS CLI & CloudShell</p>
 
</div>
 
</div>
 
</body>
</html>
"@
 
$html | Out-File "C:\automation.html"
 
</powershell>


# AWS EC2 Automation using GitHub Actions
 
##  Project Overview
This project automates the provisioning of multiple AWS EC2 instances (Linux and Windows) using shell scripts and GitHub Actions.
 
The automation eliminates manual effort by triggering infrastructure deployment directly from a CI/CD pipeline.
 
---
 
##  Architecture
 
- GitHub Actions → triggers automation
- AWS CLI → launches EC2 instances
- User-data scripts → configure instances automatically
- Public IP → used to access deployed applications
 
---
 
##  Technologies Used
 
- AWS EC2
- AWS CLI
- GitHub Actions (CI/CD)
- Bash scripting
- PowerShell (for Windows)
- Nginx / Docker / Python (Linux instances)
 
---

##  Project Structure
AWS_EC2_instances_automation/ │ ├── .github/workflows/ │   └── deploy.yml          # GitHub Actions workflow │ ├── linux/ │   ├── linux1.sh           # Nginx setup │   ├── linux2.sh           # Docker setup │   └── linux3.sh           # Python setup │ ├── windows/ │   ├── windows1.ps1        # HTML server setup │   └── windows2.ps1        # Chrome setup │ ├── deploy_instances.sh     # Main automation script ├── deploy_linux.sh         # Linux deployment script ├── deploy_windows.sh       # Windows deployment script └── README.md

---
 
##  Technologies Used
 
- AWS EC2
- AWS CLI
- GitHub Actions (CI/CD)
- Bash scripting
- PowerShell
- Nginx / Docker / Python
 
---
 
##  Automation Workflow
 
###  Trigger Methods
- Automatic: On push to `main`
- Manual: Using **Run Workflow** button
 
---
 
###  Workflow Process
 
1. GitHub Actions is triggered
2. AWS credentials are loaded from secrets
3. `deploy_instances.sh` is executed
4. EC2 instances are launched
5. User-data scripts configure servers automatically
 
---
 
##  GitHub Secrets
 
- AWS_ACCESS_KEY
- AWS_SECRET_KEY
- AWS_REGION
 
---
 
##  Instances Created
 
### Linux
- Nginx Web Server
- Docker Environment
- Python Setup
 
### Windows
- HTML Web Server (via browser)
- Chrome Installed
 
---
 
##  Access
 
- Use EC2 Public IP
- Linux → Open in browser
- Windows → Connect via RDP
 
---
 
##  How to Run
 
### Manual
1. Go to **Actions tab**
2. Select **EC2 Automation**
3. Click **Run workflow**
 
### Automatic
- Push any change → triggers deployment
 
---
 
##  Key Features
 
- One-click infrastructure deployment
- CI/CD integration with GitHub Actions
- Automated server configuration
- Supports both Linux and Windows instances
- Secure credential handling
 
---
 
##  Future Improvements
 
- Terraform integration
- Auto-termination of instances
- Monitoring with CloudWatch
- Logging system
 
---
 
##  Conclusion
 
This project demonstrates automated cloud infrastructure deployment using DevOps practices, reducing manual effort and improving consistency.

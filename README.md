AWS EC2 Instances Automation
Overview
This project automates the provisioning of multiple EC2 instances in Amazon Web Services (AWS) using AWS CLI and Bash scripting.
With a single execution of a master script, the infrastructure automatically launches:
• 3 Linux EC2 instances
• 2 Windows EC2 instances
Each instance installs and configures specific software using user-data scripts.


Architecture
The automation creates the following instances:
Instance Name	Operating System	Installed Software
Linux-Nginx	Amazon Linux 2	Nginx Web Server
Linux-Docker	Amazon Linux 2	Docker Engine
Linux-Jenkins	Amazon Linux 2	Jenkins CI/CD
Windows-Python	Windows Server	Python Environment
Windows-SQL	Windows Server	SQL Server
All instances are launched using AWS CLI commands inside a single Bash automation script.


Repository Structure
aws_ec2_instances_automation
│
├── deploy_instances.sh
├── linux1.sh
├── linux2.sh
├── linux3.sh
├── windows1.ps1
├── windows.ps1
└── .gitignore

File Descriptions
deploy_instances.sh
• Master orchestration script
• Launches all EC2 instances
linux1.sh
• Installs and configures Nginx
linux2.sh
• Installs Docker
linux3.sh
• Installs and configures Jenkins
windows1.ps1
• Installs Python
windows.ps1
• Installs SQL Server


Prerequisites
Before running the automation script, ensure the following are configured:
• AWS CLI installed
• AWS CLI credentials configured
• EC2 Security Group created
• Key Pair created (for Windows instances)
• Required permissions for EC2 provisioning


How to Run
Clone the repository:
git clone https://github.com/YOUR_USERNAME/aws_ec2_instances_automation.git

Navigate to the project folder:
cd aws_ec2_instances_automation

Make the script executable:
chmod +x deploy_instances.sh

Run the deployment script:
./deploy_instances.sh


What the Script Does
The master script will:
1. Launch 3 Amazon Linux EC2 instances
2. Launch 2 Windows Server EC2 instances
3. Configure each instance using user-data scripts
4. Automatically tag instances with meaningful names


Technologies Used
• AWS EC2
• AWS CLI
• Bash scripting
• PowerShell
• Linux Administration
• Cloud Infrastructure Automation


Learning Outcome
This project demonstrates:
• Infrastructure automation using AWS CLI
• Automated server configuration using user-data
• Multi-OS cloud provisioning
• DevOps scripting practices


Author
Aavula Sravanthi



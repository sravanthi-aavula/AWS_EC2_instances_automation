#!/bin/bash
echo "Starting EC2 instances..."
bash linux/deploy_linux.sh
bash windows/deploy_windows.sh

echo "All 5 instances launched successfully!"


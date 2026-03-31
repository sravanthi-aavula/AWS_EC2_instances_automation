#!/bin/bash
echo "Starting EC2 instances..."
bash deploy_linux.sh
bash deploy_windows.sh

echo "All 5 instances launched successfully!"


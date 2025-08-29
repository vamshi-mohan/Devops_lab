#!/bin/bash
# samplefile.sh - Simple demo script for Jenkins

echo "=============================="
echo "   Hello from Jenkins Script  "
echo "=============================="

# Show date & time
echo "Current Date & Time: $(date)"

# Show system info
echo "Running on: $(uname -a)"

# Show current user
echo "Executed by: $(whoami)"

# List current directory files
echo "Files in current directory:"
ls -l

echo "=============================="
echo "   Script Execution Completed "
echo "=============================="


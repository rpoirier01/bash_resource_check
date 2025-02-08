# CheckResource  

A simple Bash script to scan and print system resource usage, including **disk space, memory usage, running processes, and network connections** in a human-readable format.
## Features
- Displays remaining disk space (`df -h`).
- Shows memory usage (`free -h`).
- Lists running processes (`ps aux`).
- Displays active network connections (`netstat -tuln`).
- Scans specified ports from the provided list and logs open connections.
- Optional verbose mode for more detailed process logging.

## Usage  
./checkresource <outputFile> <portList> [v]

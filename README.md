# CheckResource  

A simple Bash script to scan and log system resource usage, including **disk space, memory usage, running processes, and network connections** in a human-readable format.
## Features
- Each log is timestamped with day and time
- Displays remaining disk space (df -h)
- Displays memory usage (free --mega)
- Displays running process details (for all users)
- Lists active network connections by port
- Optional verbose logging of process information (more detailed, but much more log information will be generated)
## Usage  
./checkresource <outputFile> <portList> [v]
### Example:
./checkresource logs.txt ports.txt v
Logs values to logs.txt, takes ports from ports.txt and uses verbose mode

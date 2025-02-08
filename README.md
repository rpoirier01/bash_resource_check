CheckResource
A simple Bash script to scan and print system resource usage, including disk space, memory usage, running processes, and network connections in a human-readable format.

Usage
bash
Copy
Edit
./checkresource <outputFile> <portList> [v]
<outputFile>: The file where the output will be logged.
<portList>: A text file containing a list of ports to check for active network connections.
[v]: Optional verbose mode, which includes additional details on all running processes. This can generate much larger logs.
Features
Displays remaining disk space (df -h).
Shows memory usage (free -h).
Lists running processes (ps aux).
Displays active network connections (netstat -tuln).
Scans specified ports from the provided list and logs open connections.
Optional verbose mode for more detailed logging.
Example
bash
Copy
Edit
./checkresource system_log.txt ports.txt v
This logs resource usage and detailed process info into system_log.txt while scanning for ports listed in ports.txt.


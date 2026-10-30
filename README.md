# Network HTTP Security Analyzer

## Project Overview
A network security project developed using Kali Linux, Wireshark, TShark, and Bash scripting to capture and analyze HTTP network traffic.

## Technologies Used
- Kali Linux
- Wireshark
- TShark
- Bash Scripting
- Python HTTP Server
- TCP/IP and HTTP

## Key Features
- Captured HTTP traffic in a controlled local environment
- Analyzed HTTP GET requests and TCP/IP communication
- Developed a Bash script for automated packet analysis
- Extracted source and destination IP addresses, HTTP methods, and request URIs
- Generated an automated security analysis report
- Demonstrated security risks associated with unencrypted HTTP communication

## How to Run
1. Capture local HTTP traffic on TCP port 8080.
2. Save the capture as `capture.pcapng` in the project folder.
3. Execute `bash analyze.sh`.
4. Review `security_report.txt`.

## Security Findings
HTTP traffic can expose readable request paths and query parameters. HTTPS provides encryption for sensitive communication.

## Project Environment
Kali Linux running in Oracle VirtualBox, using a local HTTP test server for authorized security analysis.

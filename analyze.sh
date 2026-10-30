#!/bin/bash

cd "$(dirname "$0")" || exit 1

if [ ! -s capture.pcapng ]; then
    echo "ERROR: capture.pcapng is missing or empty"
    exit 1
fi

tshark -r capture.pcapng -d tcp.port==8080,http \
-Y "http.request" -T fields \
-e ip.src -e ip.dst \
-e http.request.method -e http.request.uri \
> http_requests.tsv

COUNT=$(wc -l < http_requests.tsv)

if [ "$COUNT" -eq 0 ]; then
    echo "ERROR: No HTTP requests found"
    exit 1
fi

{
echo "NETWORK TRAFFIC SECURITY REPORT"
echo "==============================="
echo "HTTP Requests: $COUNT"
echo "Protocol: HTTP"
echo "Port: 8080"
echo
echo "SECURITY FINDINGS"
echo "HTTP request data is unencrypted."
echo "Request URLs and query parameters are visible."
echo "Recommendation: Use HTTPS."
echo
echo "CAPTURED HTTP REQUESTS"
cat http_requests.tsv
echo
echo "Analysis completed."
} > security_report.txt

cat security_report.txt

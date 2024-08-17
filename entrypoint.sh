#!/bin/sh

echo "Server (httpd) started"

cleanup() {
  echo -e "\n\nReceived termination signal. Shutting down..."
  exit 0
}

trap 'cleanup' TERM INT
httpd -v -p $PORT -h /www -f &
wait
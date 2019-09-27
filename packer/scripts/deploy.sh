#!/bin/bash

cd ~

git clone -b monolith https://github.com/express42/reddit.git
cd reddit
bundle install
# systemctl-ed
#puma -d

echo "[Unit]
Description=puma

[Service]
ExecStart=/usr/local/bin/puma -d
KillMode=process
User=appuser
WorkingDirectory=/home/appuser/reddit

[Install]
WantedBy=multi-user.target" > puma.service

cp puma.service /etc/systemd/system
systemctl daemon-reload
systemctl enable puma.service
# to startup-script:
#systemctl start puma.service

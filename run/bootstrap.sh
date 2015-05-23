#!/bin/bash

mkdir -p /opt/dat && \
chown -Rf dat:dat /opt/dat && \
su dat <<'EOF'
cd /opt/dat && \
yo --no-insight hubot \
 --owner="720kb Tech Support <tech@720kb.net>" \
 --name="Dat" \
 --description="Old cassettes never die" \
 --adapter=slack \
 --defaults
EOF

sed -i -e"s/.*hubot-heroku-keepalive.*//g" /opt/dat/package.json
sed -i -e"s/.*hubot-heroku-keepalive.*//g" /opt/dat/external-scripts.json


sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
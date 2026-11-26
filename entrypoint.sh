#!/bin/sh
sed -i "s/\"port\": 8080/\"port\": ${PORT:-8080}/" /usr/local/etc/xray/config.json
exec /usr/local/bin/xray -config /usr/local/etc/xray/config.json

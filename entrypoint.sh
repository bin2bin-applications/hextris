#!/bin/bash
if [ ! -f "/app/nginx.conf" ]; then
    cp "/root/nginx-base.conf" "/app/nginx.conf"
fi

if [ ! -f "/app/htpasswd" ]; then
    echo -n "admin:" > /app/htpasswd
    echo "$(cat /proc/sys/kernel/random/uuid)" | openssl passwd -apr1 -stdin >> /app/htpasswd
fi

exec nginx -c /app/nginx.conf
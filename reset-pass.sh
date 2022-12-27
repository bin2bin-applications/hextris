#!/bin/bash
echo -n "admin:" > /app/htpasswd
echo "$2" | openssl passwd -apr1 -stdin >> /app/htpasswd
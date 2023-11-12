#!/bin/sh

# Substitute environment variables in the NGINX configuration file
envsubst '$TARGET_URL' < /etc/nginx/conf.d/data-seed.formulachain.com.conf > /etc/nginx/conf.d/data-seed.formulachain.com.conf

# Start NGINX
exec "$@"

#!/bin/sh
set -e

# Echo the variable for confirmation
echo "The target URL is: $TARGET_URL"

# Substitute environment variables in the NGINX configuration file
# envsubst '$TARGET_URL' < /etc/nginx/conf.d/data-seed.formulachain.com.conf > /etc/nginx/conf.d/data-seed.formulachain.com.conf

# Start NGINX
exec "$@"

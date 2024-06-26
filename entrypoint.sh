#!/bin/sh

# Replace the DOMAIN_NAME in the nginx template configuration
envsubst '${DOMAIN_NAME}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
exec nginx -g 'daemon off;'

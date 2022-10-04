#!/usr/bin/env bash

cat /index.html.tmpl | envsubst > ${WWW_DIR:-/var/lib/nginx/html}/index.html

nginx -g "daemon off;"
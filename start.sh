#!/usr/bin/env bash

cat /index.html.tmpl | envsubst > /var/www/html/index.html

nginx -g "daemon off;"
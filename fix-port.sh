#!/bin/bash
# Change nginx to listen on 7860 so Hugging Face can reach it
sed -i 's/listen 80;/listen 7860;/g' /config/nginx/site-confs/default.conf
# Continue with the normal LSIO startup
exec /init

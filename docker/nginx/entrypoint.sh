#!/bin/sh

cd /etc/nginx

sed -i s/127.0.0.1:9001/${PHP_CGI_1-127.0.0.1:9001}/ /etc/nginx/upstream_phpcgi_tcp.conf
sed -i s/127.0.0.1:9002/${PHP_CGI_2-${PHP_CGI_1-127.0.0.1:9002}}/ /etc/nginx/upstream_phpcgi_tcp.conf

exec "$@"

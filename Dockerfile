FROM debian:jessie

FROM mariadb
FROM nginx
FROM php:fpm

RUN apt-get update && apt-get install -y \
drush \
git \
--no-install-recommends \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

CMD ping localhost

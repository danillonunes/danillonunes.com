FROM debian:jessie

FROM mariadb
FROM nginx
FROM php:fpm

RUN apt-get update && apt-get install -y \
drush \
git \
--no-install-recommends \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& /bin/sh -c 'git clone http://git.drupal.org/project/drush_build.git \
$HOME/.drush/commands/drush_build && drush cc drush'

COPY . /var/www

RUN cd /var/www && make

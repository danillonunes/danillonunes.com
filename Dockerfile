FROM alpine
MAINTAINER Danillo Nunes <marcus@danillo.net>

RUN apk add --update \
      curl \
      git \
      make \
      php-cli \
      php-ctype \
      php-json \
      php-phar \
    && \

    curl http://files.drush.org/drush.phar -o drush.phar && \
    chmod +x drush.phar && \
    mv drush.phar /bin/drush && \
    drush init && \

    rm -rf /var/cache/apk/*

WORKDIR "/danillonunes"

COPY ["http", "http"]
COPY ["danillonunes.make", "Makefile", "./"]
COPY ["docker/entrypoint.sh", ".docker/"]

VOLUME ["/danillonunes/http", "/danillonunes/files/public", "/danillonunes/files/private"]

RUN ["/bin/sh", "-c", "make"]

ENTRYPOINT [".docker/entrypoint.sh"]

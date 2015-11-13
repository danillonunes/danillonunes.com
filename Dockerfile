FROM debian:jessie

RUN DEBIAN_FRONTEND="noninteractive" && \
    apt-get update && \
    apt-get install -qy \
      ca-certificates \
      drush \
      git \
      make \
      wget \
    --no-install-recommends && \

    sed -i "s/^;date\.timezone =$/date.timezone = UTC/" /etc/php5/cli/php.ini && \

    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY [".", "/var/www/danillonunes"]

RUN /bin/bash -c "cd /var/www/danillonunes && make"

CMD ["/bin/bash"]

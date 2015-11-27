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

WORKDIR "/danillonunes"

COPY ["http", "http"]

COPY ["danillonunes.make", "Makefile", "docker/entrypoint.sh", "./"]

VOLUME ["/danillonunes/http", "/danillonunes/files", "/danillonunes/private"]

RUN ["/bin/bash", "-c", "make"]

ENTRYPOINT ["./entrypoint.sh"]

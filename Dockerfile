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

    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY [".", "/var/www/danillonunes"]

RUN /bin/bash -c "cd /var/www/danillonunes && make"

RUN ls /var/www/danillonunes

CMD ["/bin/bash"]

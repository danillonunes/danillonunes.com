FROM nginx

ADD ["https://github.com/perusio/drupal-with-nginx/archive/D7.tar.gz", "/"]
COPY ["danillonunes.conf", "/"]

RUN mkdir -p /var/www/danillonunes && \

    rm -rf /etc/nginx && \
    cd / && \
      tar -xzf D7.tar.gz && \
      mv drupal-with-nginx-D7 /etc/nginx && \
      rm -rf D7.tar.gz && \

      mv danillonunes.conf /etc/nginx/sites-available && \

    sed -i s/upload_progress/#upload_progress/ /etc/nginx/nginx.conf && \
    sed -i s/aio/#aio/g /etc/nginx/apps/drupal/drupal.conf && \
    sed -i s/track_uploads/#track_uploads/g /etc/nginx/apps/drupal/drupal.conf && \

    mkdir -p /etc/nginx/sites-enabled && \
    ln -sf /etc/nginx/sites-available/danillonunes.conf /etc/nginx/sites-enabled/. && \

    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]

FROM redis:3.2-alpine

LABEL name="retrowave-air"
LABEL maintainer="Andrey Kravtsov <raidendev@gmail.com>"

COPY conf/retrowave-air.conf /usr/local/etc/redis/retrowave-air.conf

RUN mkdir -p /var/log/redis

VOLUME /var/log/redis
VOLUME /data

EXPOSE 6379

ENTRYPOINT ["redis-server", "/usr/local/etc/redis/retrowave-air.conf"]

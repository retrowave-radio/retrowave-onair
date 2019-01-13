FROM redis:5.0-alpine

LABEL name="retrowave-air"
LABEL maintainer="Andrey Kravtsov <raidendev@gmail.com>"

COPY conf/redis.conf /etc/redis.conf

VOLUME /data
EXPOSE 6379

CMD ["redis-server", "/etc/redis.conf"]

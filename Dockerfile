FROM alpine:3

ENV ENV=/root/.ashrc

RUN apk --no-cache update \
 && apk --no-cache upgrade \
 && apk --no-cache add certbot certbot-nginx nginx \
 && mkdir -p /srv/www

COPY entrypoint /
COPY root /root
COPY www /srv/www

ENTRYPOINT ["/entrypoint"]

FROM alpine:3

RUN apk --no-cache update \
 && apk --no-cache upgrade \
 && apk --no-cache add certbot certbot-nginx nginx \
 && mkdir -p /srv/www

ENV ENV=/root/.ashrc

COPY entrypoint /
COPY root /root
COPY www /srv/www

ENTRYPOINT ["/entrypoint"]

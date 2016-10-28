FROM alpine:latest
MAINTAINER Henrik Lissner <henrik@lissner.net>

RUN apk add --update nginx && rm -rf /var/cache/apk/*
COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN ln -svf /dev/stdout /var/log/nginx/access.log
RUN ln -svf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]

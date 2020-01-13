FROM wordpress:php7.4-fpm-alpine

RUN apk update && \
	apk add nginx mysql-client

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./wordpress_db.sql /wordpress_db.sql
COPY entrypoint /entrypoint

ENTRYPOINT sh /entrypoint
FROM nginx:alpine
MAINTAINER BONNESON Tristan (trbonnes@student.42.fr)

RUN apk add --update openssh

COPY entrypoint /entrypoint

ENTRYPOINT sh /entrypoint

EXPOSE 443 80 22
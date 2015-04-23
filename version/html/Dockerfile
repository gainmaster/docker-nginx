FROM gainmaster/archlinux:base
MAINTAINER Tony Hesjevik <tony@hesjvik.no>

RUN pacman-install nginx

COPY nginx.conf       /etc/nginx/nginx.conf
COPY nginx-wrapper.sh /usr/local/bin/nginx-wrapper

VOLUME ["/srv/http"] 

EXPOSE 80

ENTRYPOINT ["nginx-wrapper"]
FROM gainmaster/archlinux
MAINTAINER Knut Lorvik <knutlor@tihlde.org>

RUN pacman-install nginx

# Create nginx root folder and set owner http
RUN chown -R http:http /srv/http

# Copy config
COPY templates/bin /usr/bin
COPY templates/etc /etc

# Define default command
ENTRYPOINT ["/usr/bin/nginx-wrapper"]

# Expose ports
EXPOSE 80
EXPOSE 443

## /usr/sbin/nginx
##
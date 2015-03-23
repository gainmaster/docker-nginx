# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman-install nginx

# Create nginx root folder and set owner http
RUN chown -R http:http /srv/http

# Copy config
COPY templates/bin /usr/bin
COPY templates/etc /etc

# Define working directory
WORKDIR /etc/nginx

# Define default command
ENTRYPOINT ["/usr/bin/nginx-wrapper"]

# Expose ports
EXPOSE 80
EXPOSE 443

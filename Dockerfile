# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman-install nginx

# Create nginx root folder and set owner http
RUN chown -R http:http /srv/http

# Copy config
ADD templates/etc /etc

# Define working directory
WORKDIR /etc/nginx

# Define default command
CMD ["/usr/sbin/nginx > /tmp/nginx.log"]

# Expose ports
EXPOSE 80
EXPOSE 443
